---
type: wiki
title: Prompt Chaining
aliases: [prompt-chaining, 提示链, chain-of-prompts]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-anthropic-building-effective-agents]]"
  - "[[../raw/2026-04-24-openai-prompt-engineering]]"
tags: [wiki, prompt-engineering, workflow, decomposition, agents]
---

# Prompt Chaining

## 一句话定义

Prompt chaining 是把一个复杂任务拆成多个连续 LLM 步骤，让每一步只处理更小、更清晰的子问题。

## 它为什么有效

复杂任务一次性做完时，模型容易同时犯多种错：理解错、结构错、遗漏约束、输出不稳定。

拆步之后，每次调用的任务更简单，也更容易加检查点。

## 典型结构

1. 先生成大纲
2. 检查大纲是否满足要求
3. 再展开正文
4. 对正文做格式化或评审

Anthropic 特别强调：中间步骤可以加 programmatic checks，避免链条越走越偏。

## 适用场景

- 文档生成
- 复杂信息抽取
- 多阶段代码生成
- 先分析后写作
- 任何能被稳定拆分成固定子任务的问题

## 和其他概念的关系

- [[prompt-engineering]] — prompt chaining 是复杂 prompt 的结构化扩展
- [[workflow-vs-agent]] — 这是 workflow，不是自治 agent
- [[evaluator-optimizer]] — evaluator-optimizer 可以看作带反馈循环的 chaining 变体

## 开放问题

- ⚠️ 拆多少步最合适？过度拆分会不会反而引入延迟和接口损耗？

## 来源

- [[../raw/2026-04-24-anthropic-building-effective-agents]]
- [[../raw/2026-04-24-openai-prompt-engineering]]（⚠️ reconstruction: true）
