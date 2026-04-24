---
type: wiki
title: Evaluator-Optimizer
aliases: [evaluator-optimizer, 评审-优化循环, generator-evaluator-loop]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-anthropic-building-effective-agents]]"
tags: [wiki, agents, workflow, evaluation, iteration]
---

# Evaluator-Optimizer

## 一句话定义

Evaluator-optimizer 是一种双阶段循环：一个模型先生成候选结果，另一个模型或同一模型的下一轮负责评价并给出反馈，再继续迭代优化。

## 它适合什么任务

Anthropic 给出的判断信号有两个：

- 人类反馈能够明显提升结果
- LLM 也能表达这种反馈

因此它特别适合需要细致打磨的任务，比如写作、复杂搜索、多轮分析和译文润色。

## 为什么它比一次生成更稳

- 把"产出"和"评价"分离
- 允许把质量标准显式化
- 通过多轮迭代逐步逼近目标

## 代价

- 调用次数更多
- 成本更高
- 若评价标准差，可能陷入无效循环

## 和其他概念的关系

- [[AI-agent-architecture]] — evaluator-optimizer 是常见 workflow pattern
- [[LLM-as-judge]] — judge 型评估常被用作 evaluator 角色
- [[prompt-chaining]] — 它可以看作带反馈环的 chaining

## 开放问题

- ⚠️ 什么样的质量标准足够明确，能让 evaluator 真正帮助优化而不是产生空泛反馈？

## 来源

- [[../raw/2026-04-24-anthropic-building-effective-agents]]
