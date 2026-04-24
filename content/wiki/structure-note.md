---
type: wiki
title: Structure Note (结构笔记)
aliases: [structure-note, 结构笔记, hub-note, MOC前身]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-zettelkasten-de-introduction]]"
tags: [wiki, knowledge-management, zettelkasten, structure, navigation]
---

# Structure Note (结构笔记)

## 一句话定义

一种**元笔记**（Meta-Note）：不记录知识本身，而是记录**其他笔记之间的关系和结构**——相当于为某个主题专门制作的目录和导航图。

## 来源

Luhmann 在其 Zettelkasten 中使用 **hub notes**——作为快速导航思想网络的枢纽入口。zettelkasten.de 将其发展为 "Structure Note" 概念。

## 特征

- **不记录一手知识**——只做链接和组织
- **一个主题一个 Structure Note**——例如"Zettelkasten 方法"有一个专属 Structure Note
- **每张新的相关笔记都要挂上去**——保持 Structure Note 的完整性
- **支持多种结构形式**：
  - 层级结构（嵌套列表）
  - 序列结构（a → b → c 论证链）
  - 混合结构

## 同一笔记可属于多个 Structure Note

一张笔记可以同时出现在多个 Structure Note 中 → 形成 **semilattice**（半格）甚至 **heterarchy**（异序结构），而非简单的树。

这与"文件夹只能放一个地方"的传统组织方式根本不同。

## 和其他概念的关系

| 概念 | 关系 |
| ---- | ---- |
| [[zettelkasten]] | Structure Note 是 Zettelkasten 中的导航枢纽 |
| [[原子化笔记]] | 原子化笔记是 Structure Note 组织的对象——先有原子才有结构 |
| [[evergreen-notes]] | Andy Matuschak 的 "Prefer associative ontologies" 原则正是 Structure Note 的理论基础 |
| [[PARA方法]] | PARA 用文件夹做层级组织，Structure Note 用链接做网状组织——两者可以互补 |
| [[llm-wiki]] | 本 LLM-Wiki 的 [[index\|index.md]] 就是一个 Structure Note |
| [[ingest-query-lint-操作循环]] | 每次 ingest 后应更新相关 Structure Note（如 index.md） |

## Structure Note vs MOC（2026-04-24 补充）

Nick Milo 的 [[MOC-map-of-content|MOC (Map of Content)]] 是 Structure Note 的现代演化：

| 维度 | Structure Note | MOC |
| ---- | -------------- | --- |
| 来源 | Luhmann hub notes | Nick Milo LYT |
| 功能 | 导航枢纽 | 导航 + 思考工具 |
| 动态性 | 手动维护 | 强调"活的文档" |

两者本质相同——都是组织其他笔记关系的元笔记。MOC 只是在现代工具（Obsidian）语境下的重新命名和扩展。

([[../raw/2026-04-24-nick-milo-lyt-moc|source]])

## 开放问题

- ✅ ~~Structure Note 和 MOC 的关系~~ → 已在上方解答
- ⚠️ 在 LLM Wiki 中，MOC/Structure Note 的维护应该完全自动化吗？还是人应保留策展权？

## 来源

- [[../raw/2026-04-24-zettelkasten-de-introduction]]（Structure Notes 节）
- [[../raw/2026-04-24-nick-milo-lyt-moc]]（MOC 节）
