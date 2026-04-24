param(
    [switch]$DryRun
)

$ErrorActionPreference = "Stop"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

$VaultRoot = "E:\Empire\obsidian-main"
$ContentDir = "E:\Empire\obsidian-publish\content"

$PublishSources = @(
    @{ Src = "03-Knowledge\LLM-Wiki\wiki"; Dest = "wiki"; Recurse = $true }
    @{ Src = "01-Projects\AI-Knowledge-System\README.md"; Dest = "ai-knowledge-system\index.md"; Recurse = $false }
    @{ Src = "01-Projects\AI-Knowledge-System\PROJECT_INDEX.md"; Dest = "ai-knowledge-system\PROJECT_INDEX.md"; Recurse = $false }
    @{ Src = "01-Projects\AI-Knowledge-System\元工程框架v2.md"; Dest = "ai-knowledge-system\元工程框架v2.md"; Recurse = $false }
)

function Test-PublishAllowed {
    param([string]$FilePath)
    if (-not (Test-Path $FilePath)) { return $false }
    $content = Get-Content $FilePath -Raw -Encoding utf8
    if ((Split-Path $FilePath -Leaf).StartsWith("_")) { return $false }
    if ($content -match "(?s)^---\s*\n(.*?)\n---") {
        $fm = $Matches[1]
        if ($fm -match "(?m)^publish:\s*false") { return $false }
    }
    return $true
}

Write-Host "=== Quartz Publish Sync ===" -ForegroundColor Cyan
if (Test-Path $ContentDir) {
    if (-not $DryRun) {
        Get-ChildItem $ContentDir -Recurse -Force | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
    }
    Write-Host "[clean] $ContentDir"
} else {
    if (-not $DryRun) { New-Item -ItemType Directory -Path $ContentDir -Force | Out-Null }
    Write-Host "[create] $ContentDir"
}

$copied = 0
$skipped = 0

foreach ($source in $PublishSources) {
    $srcPath = Join-Path $VaultRoot $source.Src
    $destPath = Join-Path $ContentDir $source.Dest

    if (-not (Test-Path $srcPath)) {
        Write-Host "[skip] Source not found: $srcPath" -ForegroundColor Yellow
        $skipped++
        continue
    }

    if ((Get-Item $srcPath).PSIsContainer) {
        $files = Get-ChildItem $srcPath -Filter "*.md" -Recurse
        foreach ($file in $files) {
            if (-not (Test-PublishAllowed $file.FullName)) {
                Write-Host "[skip] $($file.FullName) (publish: false or _prefixed)" -ForegroundColor DarkGray
                $skipped++
                continue
            }
            $relPath = $file.FullName.Substring($srcPath.Length).TrimStart('\', '/')
            $destFile = Join-Path $destPath $relPath
            $destDir = Split-Path $destFile -Parent
            if (-not $DryRun) {
                if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir -Force | Out-Null }
                Copy-Item $file.FullName -Destination $destFile -Force
            }
            Write-Host "[copy] $relPath -> $($source.Dest)\$relPath" -ForegroundColor Green
            $copied++
        }
    } else {
        if (-not (Test-PublishAllowed $srcPath)) {
            Write-Host "[skip] $srcPath (publish: false or _prefixed)" -ForegroundColor DarkGray
            $skipped++
            continue
        }
        $destDir = Split-Path $destPath -Parent
        if (-not $DryRun) {
            if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir -Force | Out-Null }
            Copy-Item $srcPath -Destination $destPath -Force
        }
        Write-Host "[copy] $($source.Src) -> $($source.Dest)" -ForegroundColor Green
        $copied++
    }
}

$rootIndex = Join-Path $ContentDir "index.md"
if (-not (Test-Path $rootIndex) -and -not $DryRun) {
    @"
---
title: 知识工程实验室
---

欢迎来到知识工程实验室。这里是公开发布的知识库。

## 导航

- [[wiki/index|LLM Wiki]] — AI 与知识管理百科
- [[ai-knowledge-system/index|AI Knowledge System]] — 项目概览
"@ | Set-Content $rootIndex -Encoding utf8
    Write-Host "[create] index.md (root)" -ForegroundColor Green
    $copied++
}

Write-Host ""
Write-Host "Done: $copied copied, $skipped skipped." -ForegroundColor Cyan
if ($DryRun) { Write-Host "(DRY RUN - no files were actually written)" -ForegroundColor Yellow }
