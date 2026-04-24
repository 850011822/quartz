---
type: wiki
title: TIL 知识管理模式 (Today I Learned)
aliases: [TIL, today-i-learned, Simon Willison TIL]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-simon-willison-til-datasette]]"
tags: [wiki, knowledge-management, til, simon-willison, markdown, git, automation]
---

# TIL 知识管理模式 (Today I Learned)

## 一句话定义

一种轻量级知识管理实践：每天把新学到的小技巧写成几段 markdown 放进 git 仓库，配合自动化（GitHub Actions + Datasette）生成可搜索的索引——介于博客和笔记之间的"刚刚好"粒度。

## Simon Willison 的实现

Simon Willison 是 Django 联合创建者、Datasette 作者，他的 TIL 系统（[simonw/til](https://github.com/simonw/til)）是这个模式的标杆实现。

### 技术栈

| 组件 | 作用 |
| ---- | ---- |
| **Git + Markdown** | 存储和版本控制 |
| **GitHub Actions** | 自动更新 README 索引 |
| **SQLite + sqlite-utils** | 中间存储（从 git history 提取元数据） |
| **Datasette** | 部署为可搜索的 web 界面 |
| **FTS（全文搜索）** | 在 Datasette 上提供搜索 |

### 自维护机制

1. 新增/更新 TIL → push 到 master
2. GitHub Actions 触发 → 扫描所有 `*/*.md` → 提取 git 时间戳
3. 写入 SQLite → 生成 README 索引 → commit 回 repo
4. 同时部署 Datasette 实例到 til.simonwillison.net

这是一个**自维护**的知识系统——新内容进来后，索引和搜索自动更新。

## 核心洞见

> "I'm a big fan of keeping content in a git repository. Git solves content versioning extremely effectively."

> "Having a GitHub repository that can update itself to maintain things like index pages feels like a technique that could be applied to all kinds of other content-related problems."

## 和其他概念的关系

| 概念 | 关系 |
| ---- | ---- |
| [[llm-wiki]] | LLM Wiki 用 LLM 做"自维护"，Simon 用 GitHub Actions 做自动化——不同的自动化层次，同一个目标 |
| [[三层架构-raw-wiki-schema]] | Simon 的 TIL 没有 raw/wiki 分离——每条 TIL 既是原始记录又是最终产物。LLM Wiki 的三层分离提供更深的编译能力 |
| [[公开第二大脑]] | Simon 的 TIL 是公开的——和 swyx 一样，公开输出换取社交复利 |
| [[learn-in-public]] | TIL 是 Learn in Public 的一种轻量实践 |
| [[digital-garden]] | TIL 介于博客和花园之间——有时间序但也按主题组织 |
| [[agent驱动的外部记忆系统]] | Simon 用脚本自动化，Eric J. Ma 用 agent 自动化——TIL 可以看作 agent 维护的前身 |
| [[evergreen-notes]] | TIL 偏向"写了就不改"，Evergreen Notes 强调持续演化——粒度和目标不同 |

## 开放问题

- ⚠️ TIL 模式适合"小发现"，但不做知识编译——多条 TIL 之间缺乏综合。LLM Wiki 的 ingest 可以把多条 TIL 综合成概念页
- ⚠️ Simon 后来大量使用 LLM（见他的 blog），TIL 模式是否会演化为 LLM 辅助版本？

## 来源

- [[../raw/2026-04-24-simon-willison-til-datasette]]
- 原链接：<https://simonwillison.net/2020/Apr/20/self-rewriting-readme/>
- TIL 站点：<https://til.simonwillison.net/>
