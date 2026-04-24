---
type: wiki
title: Workflow vs Agent
aliases: [workflow-vs-agent, workflows-vs-agents, 工作流与agent]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-anthropic-building-effective-agents]]"
tags: [wiki, agents, workflows, architecture, control]
---

# Workflow vs Agent

## 一句话定义

Workflow 是预定义代码路径上编排 LLM 与工具；agent 则让 LLM 基于环境反馈动态决定下一步。

## 区别不在于"用了几个模型"

Anthropic 的区分重点不是单 agent / 多 agent，而是**控制权在谁手里**：

- workflow：开发者预先写好路径
- agent：模型在执行中拥有过程控制权

## 什么时候选 workflow

- 任务边界清晰
- 子步骤可预先枚举
- 更需要稳定性、可预测性和成本控制
- 出错后希望容易 debug

## 什么时候选 agent

- 问题开放、步数未知
- 无法预先写死路径
- 需要利用工具结果持续调整计划
- 可以承受更高 latency / cost

## 一个简单判断式

如果你已经能清楚画出流程图，那大概率先用 workflow；
如果流程图的分支几乎取决于运行时环境，才考虑 agent。

## 和其他概念的关系

- [[AI-agent-architecture]] — 这是 agent 架构选型的第一道分叉
- [[prompt-chaining]] — 典型 workflow
- [[evaluator-optimizer]] — 也是 workflow，而不是完全自治 agent

## 来源

- [[../raw/2026-04-24-anthropic-building-effective-agents]]
