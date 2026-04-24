---
type: wiki
title: Augmented LLM
aliases: [augmented-LLM, augmented-llm, 增强型LLM]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-anthropic-building-effective-agents]]"
  - "[[../raw/2026-04-24-openai-embeddings-guide]]"
tags: [wiki, llm, agents, tools, memory, retrieval]
---

# Augmented LLM

## 一句话定义

Augmented LLM 不是裸模型，而是接入 retrieval、tools、memory 等能力后，能与外部环境交互的 LLM。

## 为什么它是 agent 的基础块

Anthropic 的观点很明确：真正进入生产的 agent 系统，基础构件通常不是单次 completion，而是一个**可调用外部能力的模型**。

常见增强项包括：

- retrieval
- tool use
- memory
- code execution
- structured outputs

## 关键不是功能数量，而是接口质量

增强能力是否有价值，取决于：

- schema 是否清晰
- 描述是否准确
- 权限边界是否明确
- 模型是否容易学会什么时候该用、怎么用

## 和其他概念的关系

- [[AI-agent-architecture]] — augmented LLM 是 workflows 和 agents 的共同底座
- [[RAG-retrieval-augmented-generation]] — retrieval 是一种典型增强
- [[prompt-engineering]] — prompt 负责告诉模型何时使用这些增强能力

## 来源

- [[../raw/2026-04-24-anthropic-building-effective-agents]]
- [[../raw/2026-04-24-openai-embeddings-guide]]（⚠️ reconstruction: true）
