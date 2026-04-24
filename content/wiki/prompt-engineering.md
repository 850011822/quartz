---
type: wiki
title: Prompt Engineering
aliases: [prompt-engineering, 提示工程, prompting]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-openai-prompt-engineering]]"
  - "[[../raw/2026-04-24-anthropic-building-effective-agents]]"
tags: [wiki, prompt-engineering, llm, ai-engineering, prompting]
---

# Prompt Engineering

## 一句话定义

Prompt engineering 是对模型指令、上下文、约束、示例和输出格式进行系统设计，以提高结果质量、稳定性与可控性的实践。

## 它为什么存在

即使模型能力足够强，任务描述不清、上下文缺失、输出格式含糊，也会导致结果不稳定。

因此 prompt 的作用不是"骗模型"，而是把**任务接口设计清楚**。

## 常见最佳实践

- **明确目标**：先说任务，再说约束和成功标准。
- **补足上下文**：给边界、输入格式、受众和已知前提。
- **指定输出结构**：例如 JSON、表格、markdown section。
- **给 examples**：用 few-shot 缩小歧义空间。
- **复杂任务拆步**：必要时用工作流拆开，而不是一口气让模型完成。
- **做评测**：靠样例集比较 prompt 版本，而不是凭主观感觉。

## Prompt 已经不是一句话

在 [[software-3-0]] / agent 场景里，prompt surface 往往包括：

- system instruction
- tool descriptions
- output contracts
- failure handling rules
- workflow checkpoints

也就是说，prompt engineering 正在逼近一种轻量的"自然语言接口设计"。

## 它的边界

prompt 不能替代：

- 缺失的知识（要靠 [[RAG-retrieval-augmented-generation]] 或资料补全）
- 差的工具定义（要靠更好的 schema / docs）
- 差的系统架构（要靠 [[AI-agent-architecture]] 设计）

## 和其他概念的关系

- [[software-3-0]] — Prompt 是 Software 3.0 的核心编程接口
- [[AI-agent-architecture]] — agent 的行为边界很大程度由 prompt 和工具描述共同决定
- [[prompt-chaining]] — 拆步式 prompt 是复杂任务提升稳定性的常见做法

## 开放问题

- ⚠️ 在模型越来越强之后，prompt engineering 的价值会下降，还是会转化成更高层的 agent spec 设计？
- ⚠️ prompt 的收益何时开始小于检索、工具或 eval 的收益？

## 来源

- [[../raw/2026-04-24-openai-prompt-engineering]]（⚠️ reconstruction: true）
- [[../raw/2026-04-24-anthropic-building-effective-agents]]
