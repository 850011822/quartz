---
type: wiki
title: OpenAI Agents SDK
aliases: [openai-agents-sdk, OpenAI Agents SDK, agents-sdk]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-openai-agents-sdk]]"
tags: [wiki, openai, agents, sdk, tracing, orchestration]
---

# OpenAI Agents SDK

## 一句话定义

OpenAI Agents SDK 是面向服务端 agent orchestration 的应用层 SDK：它把 Agent、Runner、tools、sessions、guardrails 和 tracing 组合成一套可执行框架。

## 它的定位

官方文档把它和 Agent Builder 区分开：

- 要 hosted builder / ChatKit → 走 Agent Builder
- 要自己在服务端掌控 orchestration → 走 Agents SDK

## 这说明它是什么

它不是单纯的 prompt helper，而是：

- 运行多轮 agent 的容器
- 管理工具调用与会话状态的框架
- 带 observability / tracing 的 agent runtime

## 为什么它值得关注

因为它代表了一种更成熟的 agent 产品化方向：

- 会话管理
- 工具原语
- 可观测性
- 评测、蒸馏、追踪等外围能力

## 和其他概念的关系

- [[AI-agent-architecture]] — SDK 是架构落地的工程化实现
- [[MCP-model-context-protocol]] — 两者都处理 agent 与环境的接口，但一个更偏 SDK/runtime，一个更偏协议
- [[coding-agent-ecosystem]] — 代码 agent 生态会不断吸收类似的 runtime 结构

## 来源

- [[../raw/2026-04-24-openai-agents-sdk]]（⚠️ reconstruction: true）
