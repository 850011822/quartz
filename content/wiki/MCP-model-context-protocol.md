---
type: wiki
title: Model Context Protocol (MCP)
aliases: [MCP-model-context-protocol, MCP, model-context-protocol]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-mcp-intro]]"
tags: [wiki, mcp, protocol, agents, tools, context]
---

# Model Context Protocol (MCP)

## 一句话定义

MCP 是一种把 AI 应用、agent 与外部工具、资源和提示模板连接起来的开放协议，目标是用统一接口替代碎片化集成。

## 官方比喻为什么好用

官方把它类比成 AI 世界的 USB-C：

- 工具不用为每个客户端单独接线
- 客户端也不必为每个系统重写一套接口
- 一次实现，可以被多个 AI client / IDE / agent 复用

## 三个核心能力面

- **Tools**：模型可调用的动作接口
- **Resources**：可读取的结构化上下文
- **Prompts**：可复用的模板与工作流入口

## 它改变了什么

MCP 把很多原本写死在特定产品里的 integration，抬升成**跨产品、跨生态的协议层**。

这对 agent 工程尤其重要，因为 agent 的能力往往来自外部环境，而不是模型本体。

## 和其他概念的关系

- [[AI-agent-architecture]] — MCP 常作为 augmented LLM 的环境接入层
- [[augmented-LLM]] — tools / resources / prompts 正是增强型 LLM 的典型能力面
- [[coding-agent-ecosystem]] — IDE-native agent 正在把 MCP 当成标准扩展面

## 来源

- [[../raw/2026-04-24-mcp-intro]]
