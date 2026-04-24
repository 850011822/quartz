---
type: wiki
title: LLM-as-Judge
aliases: [LLM-as-judge, LLM-as-a-Judge, judge-model]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-llm-as-judge]]"
tags: [wiki, evaluation, llm-as-judge, mt-bench, rubric]
---

# LLM-as-Judge

## 一句话定义

LLM-as-Judge 是用一个 LLM 按 rubric 去评分、排序或比较另一个 LLM / agent 输出的评估模式。

## 为什么它会成为主流

很多真实任务没有明确 ground truth，尤其是：

- 开放式回答
- 写作质量
- agent 轨迹表现
- 帮助性 / 相关性 / 清晰度等主观维度

在这些场景里，LLM judge 能提供比简单规则更细腻、比纯人工更可扩展的评测方式。

## 典型输入

- 原始输入
- 模型输出（一个或多个）
- 评分 rubric 或比较标准

## 已知风险

- position bias
- verbosity bias
- self-enhancement bias
- rubric 模糊导致评分漂移

因此它不是万能裁判，更适合作为**持续评测体系中的一个组件**。

## 和其他概念的关系

- [[evaluator-optimizer]] — judge 很常被拿来充当 evaluator 角色
- [[AI-agent-architecture]] — agent 系统上线后，需要 judge 类评测做回归与监控
- [[openai-agents-sdk]] — 这类 SDK 与 tracing/evals 产品经常会接入 LLM judge

## 来源

- [[../raw/2026-04-24-llm-as-judge]]（⚠️ reconstruction: true）
