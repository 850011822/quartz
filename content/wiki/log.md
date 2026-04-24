---
type: log
title: LLM-Wiki 操作日志
status: stable
created: 2026-04-24
updated: 2026-04-24
last_batch: 2026-04-24-batch1
tags: [wiki, log, llm-wiki, append-only]
---

# log.md — 操作日志

> append-only。条目格式：`## [YYYY-MM-DD] <kind> | <title>`
> `kind ∈ ingest | query | lint | refactor | schema`
>
> 快速查看最近 5 条：`grep "^## \[" log.md | tail -5`

## [2026-04-24] ingest | Karpathy "LLM Wiki" gist

- source: [[../raw/2026-04-24-karpathy-llm-wiki-gist]]
- agent: Cascade (by user request, 首次 raw→wiki 编译演示)
- 新增 wiki 页：
  - [[llm-wiki]]（stable）
  - [[三层架构-raw-wiki-schema]]（stable）
  - [[ingest-query-lint-操作循环]]（stable）
  - [[memex]]（draft，待读一手原文升级）
- 新增索引 / 日志：
  - [[index]]（首建）
  - [[log]]（本文件首建）
- 未处理：
  - _example-page.md 与 llm-wiki.md 存在主题重叠，保留前者作为纯模板，标记后续 lint 跟踪
- 人反馈：待

## [2026-04-24] ingest | swyx "Moving to Obsidian as a Public Second Brain"

- source: [[../raw/2026-04-24-swyx-obsidian-brain]]
- agent: Cascade
- 新增 wiki 页：
  - [[公开第二大脑]]（stable）
  - [[选型标准-笔记工具]]（stable）
  - [[learn-in-public]]（draft）
- 更新 wiki 页：
  - [[llm-wiki]]（追加"三种路线对照"段 + 来源）
  - [[index]]（追加 4 条）

## [2026-04-24] ingest | Eric J. Ma "Mastering PKM with Obsidian and AI"

- source: [[../raw/2026-04-24-ericjma-obsidian-ai-pkm]]（⚠️ 重建版，原文待补）
- agent: Cascade
- 新增 wiki 页：
  - [[agent驱动的外部记忆系统]]（stable）
- 更新 wiki 页：
  - [[llm-wiki]]（三路线对照已包含 Eric）
  - [[选型标准-笔记工具]]（已交叉对照 Eric 标准）
  - [[index]]（追加）

## [2026-04-24] ingest | Tiago Forte "Building a Second Brain"

- source: [[../raw/2026-04-24-tiago-forte-basb-para]]
- agent: Cascade (Session D, batch 1/4)
- 新增 wiki 页：
  - [[building-a-second-brain]]（stable）
  - [[PARA方法]]（stable）
  - [[progressive-summarization]]（draft）
- 更新 wiki 页：
  - [[llm-wiki]]（追加"方法论谱系"段）
  - [[三层架构-raw-wiki-schema]]（追加"受到哪些方法论影响"段）
  - [[公开第二大脑]]（追加交叉链接）
  - [[index]]（追加 7 条）

## [2026-04-24] ingest | Andy Matuschak "Evergreen Notes"

- source: [[../raw/2026-04-24-andy-matuschak-evergreen-notes]]
- agent: Cascade (Session D, batch 1/4)
- 新增 wiki 页：
  - [[evergreen-notes]]（stable）
- 更新 wiki 页：
  - [[公开第二大脑]]（追加 Andy 公开笔记链接）

## [2026-04-24] ingest | zettelkasten.de "Introduction to the Zettelkasten Method"

- source: [[../raw/2026-04-24-zettelkasten-de-introduction]]
- agent: Cascade (Session D, batch 1/4)
- 新增 wiki 页：
  - [[zettelkasten]]（stable）
  - [[原子化笔记]]（stable）
  - [[structure-note]]（stable）
- 更新 wiki 页：
  - [[三层架构-raw-wiki-schema]]（追加 Zettelkasten 影响）

## [2026-04-24] ingest | Simon Willison "TIL + Datasette"

- source: [[../raw/2026-04-24-simon-willison-til-datasette]]
- agent: Cascade (Session D, batch 2/4)
- 新增 wiki 页：
  - [[TIL-知识管理模式]]（stable）
- 更新 wiki 页：
  - [[agent驱动的外部记忆系统]]（追加交叉链接）

## [2026-04-24] ingest | Maggie Appleton "A Brief History & Ethos of the Digital Garden"

- source: [[../raw/2026-04-24-maggie-appleton-digital-garden-history]]
- agent: Cascade (Session D, batch 2/4)
- 新增 wiki 页：
  - [[digital-garden]]（stable）
  - [[garden-vs-stream]]（stable）
- 更新 wiki 页：
  - [[公开第二大脑]]（追加 digital-garden + garden-vs-stream 链接）

## [2026-04-24] ingest | Karpathy "Software 3.0 / LLM OS"

- source: [[../raw/2026-04-24-karpathy-software-3-0]]（⚠️ reconstruction: true，基于报道重建）
- agent: Cascade (Session D, batch 2/4)
- 新增 wiki 页：
  - [[software-3-0]]（stable）
  - [[LLM-as-OS]]（draft）
- 更新 wiki 页：
  - [[agent驱动的外部记忆系统]]（追加 Software 3.0 链接）
  - [[index]]（追加 5 条）

## [2026-04-24] ingest | Nat Eliason "Roam: Why I Love It and How I Use It"

- source: [[../raw/2026-04-24-nat-eliason-roam-workflow]]
- agent: Cascade (Session D, batch 3/4)
- 新增 wiki 页：
  - [[双向链接]]（stable）
- 更新 wiki 页：无（交叉链接已内置在新页中）

## [2026-04-24] ingest | Nick Milo "Linking Your Thinking (LYT)"

- source: [[../raw/2026-04-24-nick-milo-lyt-moc]]（⚠️ reconstruction: true）
- agent: Cascade (Session D, batch 3/4)
- 新增 wiki 页：
  - [[MOC-map-of-content]]（stable）
  - [[LYT-linking-your-thinking]]（stable）
- 更新 wiki 页：
  - [[structure-note]]（解答了 MOC vs Structure Note 的开放问题）

## [2026-04-24] ingest | Eleanor Konik "Obsidian Roundup / State of the Eleanor"

- source: [[../raw/2026-04-24-eleanor-konik-obsidian-roundup]]（⚠️ reconstruction: true）
- agent: Cascade (Session D, batch 3/4)
- 新增 wiki 页：
  - [[obsidian-ecosystem]]（stable）
- 更新 wiki 页：
  - [[index]]（追加 4 条）

## [2026-04-24] ingest | David Allen "Getting Things Done (GTD)"

- source: [[../raw/2026-04-24-david-allen-gtd]]（⚠️ reconstruction: true）
- agent: Cascade (Session D, batch 4/4)
- 新增 wiki 页：
  - [[GTD-getting-things-done]]（stable）
- 更新 wiki 页：
  - [[index]]（追加 1 条）
