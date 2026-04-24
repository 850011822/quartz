---
type: wiki
title: 三层架构 — Raw / Wiki / Schema
aliases: [三层架构, raw-wiki-schema, LLM Wiki Architecture]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-karpathy-llm-wiki-gist]]"
tags: [wiki, architecture, llm-wiki]
---

# 三层架构 — Raw / Wiki / Schema

> Karpathy `LLM Wiki` 最核心的结构抽象。理解这三层的**写权限归属**是理解整套方法的关键。

## 三层

### 1. Raw sources（原始资料层）

- 文章、论文、图片、数据文件
- **immutable**：LLM 只读，**绝不修改**
- 人工策展（curate），决定"放什么进来"
- 角色：**source of truth**

对应本 vault：`03-Knowledge/LLM-Wiki/raw/`

### 2. The wiki（编译层）

- LLM 生成的 markdown 集合
- 概念页、实体页、对比页、综述页
- **LLM 独占写权限**，人只读
- 每次摄入新资料，LLM 跨越多个页面做同步更新

对应本 vault：`03-Knowledge/LLM-Wiki/wiki/`

### 3. The schema（规则层）

- `CLAUDE.md` / `AGENTS.md`
- 约定目录语义、页面结构、摄入/查询/体检工作流
- 人和 LLM **共同演化**这份文件
- 角色：**让 LLM 变成有纪律的维护者，而不是普通聊天机器人**

对应本 vault：`03-Knowledge/LLM-Wiki/AGENTS.md` + `CLAUDE.md` + `lint.md`

## 写权限对照表

| 层 | 人写 | LLM 写 |
| -- | ---- | ------ |
| Raw | ✅ 人放进来 | ❌ 禁止修改 |
| Wiki | ⚠️ 一般不写（指挥为主） | ✅ 主要工作区 |
| Schema | ✅ 人和 LLM 协商改 | ⚠️ 必须经人同意 |

**写权限错位 = 系统失控信号**。例如 LLM 改了 raw 文件、或者擅自改了 schema，都应该被 lint 抓出来。

## 为什么这样分层

- **Raw 不可改**：保证可追溯、可重放
- **Wiki 由 LLM 独占**：避免人手改导致 LLM 下次同步时产生冲突或过时信息
- **Schema 共演化**：随着你的领域和工作流摸清，规则自然会更精细

## 受到哪些方法论影响（2026-04-24 补充）

- [[PARA方法]]：PARA 按可行动性四分类，三层架构按写权限三分层——都是"用分类驱动行为纪律"
- [[zettelkasten]]：Zettelkasten 的"连接优先于收集"思想影响了 wiki 层的设计——不是堆原始资料，而是编译成互联的概念页
- [[building-a-second-brain]]：BASB 的"优化外部系统而非优化自己"理念，三层架构正是这个外部系统的骨架

([[../raw/2026-04-24-tiago-forte-basb-para|source]] · [[../raw/2026-04-24-zettelkasten-de-introduction|source]])

## 相关

- [[llm-wiki|LLM Wiki（概念）]]
- [[ingest-query-lint-操作循环]]
- [[PARA方法]]（对比）
- 本 vault 的具体实现：[[../README|LLM-Wiki README]] · [[../AGENTS]] · [[../CLAUDE]] · [[../lint]]

## 来源

- [[../raw/2026-04-24-karpathy-llm-wiki-gist]]（Architecture 节）
