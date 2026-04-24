---
type: wiki
title: AI Agent Architecture
aliases: [AI-agent-architecture, agent-architecture, AI-agent-patterns]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-anthropic-building-effective-agents]]"
tags: [wiki, agents, architecture, workflows, ai-engineering, anthropic]
---

# AI Agent Architecture

## 一句话定义

AI agent architecture 指的是：如何围绕 LLM、tools、memory、retrieval 和 control loop 组织系统，使其能在成本、可靠性和自治性之间取得平衡。

## Anthropic 的核心判断

先问一句：**你真的需要 agent 吗？**

最简单可行方案优先：

- 单次 LLM 调用能解决 → 不要上 agent
- 固定流程足够 → 用 workflow
- 步数不可预测、需要动态决策 → 再用 agent

## 一个实用分层

1. **Augmented LLM**：带 retrieval / tools / memory 的基础模型
2. **Workflows**：预先编排好的多步流程
3. **Agents**：模型根据环境反馈自主决定下一步

## 常见模式

- [[prompt-chaining]] — 串行拆步
- routing — 先分类，再走不同分支
- parallelization — 并发跑独立子任务
- orchestrator-workers — 上层协调器分派子任务
- [[evaluator-optimizer]] — 生成 + 评估 + 迭代
- [[workflow-vs-agent]] — 自治 agent 与预定义 workflow 的边界判断

## 设计一个 agent 时真正要想清楚的事

- 工具集合是否少而清晰
- 工具文档是否让模型容易正确调用
- 每一步是否能拿到环境反馈（ground truth）
- 是否设置停止条件、检查点和人类接管点
- 是否有评测和沙箱，而不是直接上生产

## 为什么很多 agent 失败

不是模型不够聪明，而是：

- 工具太多、太模糊
- 流程本该写死却放给模型自由发挥
- 没有反馈闭环
- 没有 guardrails，导致错误叠加

## 和其他概念的关系

- [[prompt-engineering]] — prompt 是 agent 行为的第一层接口
- [[augmented-LLM]] — augmented LLM 是 agent 系统的基础构件
- [[RAG-retrieval-augmented-generation]] — retrieval 往往是 agent 的一项增强能力
- [[llm-wiki]] — LLM-Wiki 是偏 workflow / compile 的知识系统，而非纯 query-time agent

## 开放问题

- ⚠️ 什么时候应该把一个 workflow 升级成 agent？
- ⚠️ 多 agent 真的是必要复杂度，还是单 agent + 好工具就够？

## 来源

- [[../raw/2026-04-24-anthropic-building-effective-agents]]
