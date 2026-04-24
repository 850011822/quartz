---
type: wiki
title: Dataview (Obsidian)
aliases: [dataview-obsidian, dataview, Obsidian Dataview]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-dataview-docs]]"
tags: [wiki, obsidian, dataview, queries, metadata]
---

# Dataview (Obsidian)

## 一句话定义

Dataview 是 Obsidian 里把 markdown 文件、frontmatter、tasks 和 metadata 变成可查询数据集的插件，相当于 vault 内部的轻量查询层。

## 为什么它重要

Obsidian 默认擅长写和链接；Dataview 让它开始擅长：

- 做动态列表
- 汇总项目 / 任务 / 读书 / 页面状态
- 把散落在文件里的 metadata 变成仪表盘

## DQL 的核心特征

官方文档强调的几个点：

- query type 有 LIST、TABLE、TASK、CALENDAR
- 不同 query type 作用在 page 或 task 层级
- 大 vault 里最好加 `FROM` 限定范围，否则查询可能变慢甚至卡住

## 它适合什么

- MOC / dashboard
- 项目总览
- 按标签 / 状态 / 时间筛选笔记
- 任务与复盘页面

## 它不是什么

- 不是数据库本体
- 不是全文搜索替代品
- 不是所有复杂逻辑都该硬塞进去的地方

## 和其他概念的关系

- [[dataviewjs]] — 当 DQL 不够时，可用 DataviewJS 进一步编程
- [[templater-obsidian]] — Templater 负责生成结构，Dataview 负责读取与汇总结构
- [[obsidian-ecosystem]] — Dataview 是 Obsidian 生态里最具代表性的结构化插件之一

## 来源

- [[../raw/2026-04-24-dataview-docs]]（⚠️ reconstruction: true）
