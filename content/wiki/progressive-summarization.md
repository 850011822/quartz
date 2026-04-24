---
type: wiki
title: 渐进式摘要 (Progressive Summarization)
aliases: [progressive-summarization, 渐进式摘要, PS]
status: draft
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-tiago-forte-basb-para]]"
tags: [wiki, knowledge-management, distillation, tiago-forte, basb]
---

# 渐进式摘要 (Progressive Summarization)

## 一句话定义

Tiago Forte 提出的笔记提炼技术：对同一篇笔记进行**多层级、渐进式**的压缩，每次重访时都可以在更高层级上快速扫描或深入阅读。

## 五个层级

| 层级 | 操作 | 信息密度 |
| ---- | ---- | -------- |
| L1 | 原文摘录 | 低 |
| L2 | **加粗**关键句 | 中 |
| L3 | ==高亮==加粗中的核心 | 高 |
| L4 | 用自己的话写一句摘要 | 很高 |
| L5 | 把多篇 L4 综合成独立产出 | 最高 |

## 核心思想

- **不要一次提炼到底**——每次只做一点，分散在多次重访中完成
- **为未来的自己服务**——笔记不是写给现在的自己，而是给几周/几月后重访时的自己
- **discoverable > comprehensive**——能快速定位比事无巨细更重要

## 和其他概念的关系

- [[building-a-second-brain]] — PS 是 BASB 中 CODE 的 D（Distill）步骤的具体方法
- [[llm-wiki]] — LLM Wiki 的 ingest 操作本质上就是自动化的 L4-L5：LLM 读原文 → 提炼成概念页
- [[evergreen-notes]] — Evergreen Notes 的"concept-oriented"原则和 PS 的 L4 层（用自己的话重述）有相似目标
- [[ingest-query-lint-操作循环]] — ingest 可以看作 LLM 对 raw 材料执行的一次性 L1→L4 渐进摘要

## 开放问题

- ⚠️ 在 LLM 时代，PS 的手动分层还有必要吗？LLM 可以一步从 L1 跳到 L4
- ⚠️ PS 的价值可能不在于产出，而在于过程中的思考——那 LLM 代劳是否丢失了这个价值？

## 来源

- [[../raw/2026-04-24-tiago-forte-basb-para]]
