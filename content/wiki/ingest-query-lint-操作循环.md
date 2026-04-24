---
type: wiki
title: Ingest / Query / Lint 三操作循环
aliases: [三操作循环, 操作循环, ingest-query-lint]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-karpathy-llm-wiki-gist]]"
tags: [wiki, operations, llm-wiki, workflow]
---

# Ingest / Query / Lint — 三操作循环

> LLM Wiki 日常运行只有这三种动作。摄入、查询、体检，循环反复。

## Ingest（摄入）

**触发**：一份新资料被放进 `raw/`。

**流程**（Karpathy 建议）：

1. LLM 读资料
2. 和人讨论关键要点
3. 写一个 summary 页进 wiki
4. 更新 index
5. **跨多个相关概念/实体页做同步更新**（一份资料通常牵动 10-15 页）
6. 追加一条 log 记录

**节奏选择**：

- 一次一份、人参与（推荐，尤其早期）
- 批量摄入、少监督（wiki 成熟后可用）

**本 vault 对应规则**：[[../AGENTS#2-raw--wiki-的编译规则|AGENTS §2]]

## Query（查询）

**触发**：人向 wiki 提问。

**流程**：

1. LLM 先读 `index.md`，定位相关页
2. 读那些页，合成带引用的答案
3. 输出形态不限：markdown 页、对比表、Marp 幻灯片、matplotlib 图、canvas

**关键洞见**：

> "Good answers can be filed back into the wiki as new pages."

查询派生的对比、分析、连接也是**资产**，不该沉没在对话里。**反写回 wiki** 才能让探索也复利化。

**本 vault 对应规则**：[[../AGENTS#4-对话结论反写回-wiki|AGENTS §4]]

## Lint（体检）

**触发**：人触发或定期（本 vault 默认每周）。

**检查**：

- 页与页之间的矛盾
- 被新资料超越的过时断言
- 孤儿页（无入链）
- 文中反复提到但没有独立页的重要概念
- 缺失的交叉引用
- 可以靠一次 web 搜索填补的数据空洞

**产出**：待修清单（**不自动修复**，交人裁决）。

**本 vault 对应规则**：[[../lint]]

## 循环而不是线性

```
           ┌─────────┐
     ┌────▶│ Ingest  │────┐
     │     └─────────┘    │
     │                    ▼
┌─────────┐          ┌─────────┐
│  Lint   │◀─────────│  Wiki   │
└─────────┘          └─────────┘
     ▲                    ▲
     │     ┌─────────┐    │
     └─────│  Query  │────┘
           └─────────┘
```

- Ingest 往 wiki 加
- Query **也**往 wiki 加（反写）
- Lint 不改 wiki，但驱动人去修 / 去补资料 / 去拆页

## 相关

- [[llm-wiki|LLM Wiki（概念）]]
- [[三层架构-raw-wiki-schema]]

## 来源

- [[../raw/2026-04-24-karpathy-llm-wiki-gist]]（Operations 节）
