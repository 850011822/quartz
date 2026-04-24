---
type: wiki
title: DataviewJS
aliases: [dataviewjs, DataviewJS, dv-api]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-dataview-docs]]"
tags: [wiki, obsidian, dataview, javascript, dashboards]
---

# DataviewJS

## 一句话定义

DataviewJS 是 Dataview 提供的 JavaScript API 层，让你在 `dataviewjs` 代码块里直接用 `dv` 操作 vault 数据。

## 为什么它值得单独成页

DQL 足够声明式，但一旦需要更灵活的数据变换、条件逻辑和自定义渲染，就会碰到上限；这时 DataviewJS 就从"查询语言"切换到"可编程查询环境"。

## 典型能力

- `dv.pages()` 获取页面集合
- `dv.table()` / `dv.list()` 自定义输出
- 组合更复杂的 JS 逻辑做过滤、分组、排序、映射

## 它的代价

- 灵活性更高
- 可维护性更差一些
- 对 vault 结构和代码能力要求更高

## 和其他概念的关系

- [[dataview-obsidian]] — DataviewJS 是 Dataview 的进阶层
- [[templater-obsidian]] — 前者偏读取/展示，后者偏生成/自动化

## 来源

- [[../raw/2026-04-24-dataview-docs]]（⚠️ reconstruction: true）
