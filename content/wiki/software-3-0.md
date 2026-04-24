---
type: wiki
title: Software 3.0
aliases: [software-3-0, Software 3.0, 软件3.0]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-karpathy-software-3-0]]"
  - "[[../raw/2026-04-24-karpathy-llm-wiki-gist]]"
tags: [wiki, ai-architecture, karpathy, software-paradigm, llm]
---

# Software 3.0

## 一句话定义

Karpathy 提出的软件范式演进框架：Software 1.0（人写代码）→ 2.0（神经网络训练）→ 3.0（自然语言提示 LLM）——三种范式共存，每种有各自的适用场景。

## 三代范式对比

| 范式 | 编程方式 | "程序员"做什么 | 代表技术 |
| ---- | -------- | -------------- | -------- |
| **1.0** | 人写显式代码 | 写 C++/Python/Java | 传统软件工程 |
| **2.0** | 人设计架构 + 数据训练模型 | 准备数据、设计网络、调参 | 深度学习 |
| **3.0** | 用自然语言提示 LLM | Prompt engineering, vibe coding | GPT/Claude/Llama |

## Tesla Autopilot 的范式迁移

Karpathy 以自己在 Tesla 的经验为例：
1. 最初：大量 C++ 代码（1.0）+ 少量神经网络做图像识别（2.0）
2. 随着系统改进：神经网络能力增长，C++ 代码被删除
3. "Software 2.0 stack quite literally **ate through** the Software 1.0 stack"

类似的"吞噬"正在 3.0 中发生——LLM 正在吃掉之前需要显式代码或专门训练的功能。

## 和 LLM Wiki 的关系

LLM Wiki 是 Software 3.0 理念在知识管理领域的具体应用：
- **1.0 做法**：人手动维护 wiki（Wikipedia 模式）
- **2.0 做法**：用 NLP/ML 做自动摘要、分类
- **3.0 做法**：直接用自然语言指示 LLM 编译和维护整个知识库

## 和其他概念的关系

- [[llm-wiki]] — LLM Wiki 是 Software 3.0 在知识管理的落地
- [[LLM-as-OS]] — Software 3.0 的底层比喻：LLM 是新型操作系统
- [[agent驱动的外部记忆系统]] — Eric J. Ma 的 agent 方案也是 Software 3.0 思想的实践
- [[三层架构-raw-wiki-schema]] — Schema 层（AGENTS.md / CLAUDE.md）本质上是 Software 3.0 的"程序"——用自然语言写给 LLM 的指令

## 开放问题

- ⚠️ 三种范式的边界在哪？什么任务适合 3.0，什么必须回到 1.0？
- ⚠️ "Vibe coding"（让 LLM 写代码）是 3.0 还是用 3.0 写 1.0？

## 来源

- [[../raw/2026-04-24-karpathy-software-3-0]]（⚠️ reconstruction: true，基于报道重建）
- [[../raw/2026-04-24-karpathy-llm-wiki-gist]]
