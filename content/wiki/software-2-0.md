---
type: wiki
title: Software 2.0
aliases: [software-2-0, Software 2.0, 软件2.0]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-karpathy-software-2-0]]"
  - "[[../raw/2026-04-24-karpathy-software-3-0]]"
tags: [wiki, ai-engineering, karpathy, software-paradigm, deep-learning]
---

# Software 2.0

## 一句话定义

Karpathy 提出的范式：在越来越多问题上，程序不再主要由人手写规则，而是由数据、目标函数和训练过程产出模型参数。

## 核心命题

- **Software 1.0**：人写显式代码。
- **Software 2.0**：人定义训练目标、数据和模型结构，优化过程产出权重。
- 在这种视角下，模型参数不是配置，而是程序本体的一部分。

## 工程重心的迁移

| 维度 | Software 1.0 | Software 2.0 |
| ---- | ------------ | ------------ |
| 主要产物 | source code | model weights |
| 核心输入 | rules / logic | data + objective |
| 主要 debug 对象 | code path | data, labels, eval, failure cases |
| 基础设施 | 编译器、CI、测试 | 训练框架、GPU、数据管线、评测 |

## 为什么它重要

Software 2.0 不是说传统软件工程失效，而是说：在感知、语言、推荐、搜索排序等领域，**学习到的程序**比手写规则更可行。

Karpathy 的关键洞见是：一旦把模型看成程序，很多工程问题都会改写为：

- 怎么收集和清洗数据
- 怎么定义 loss 和 eval
- 怎么迭代 error analysis
- 怎么管理模型版本与回归

## 和 Software 3.0 的关系

[[software-3-0]] 可以看作在 Software 2.0 之后的进一步抽象：

- 2.0：通过训练对模型编程
- 3.0：通过自然语言对通用模型编程

所以 3.0 不是否定 2.0，而是站在 2.0 形成的大模型能力之上，把编程入口进一步上移。

## 和其他概念的关系

- [[software-3-0]] — Software 3.0 是对 2.0 的再上一层抽象
- [[embedding]] — embedding 是 Software 2.0 产物的一种典型表示
- [[RAG-retrieval-augmented-generation]] — RAG 体现了 2.0 模型与外部知识系统的结合
- [[prompt-engineering]] — 在 3.0 时代，prompt 成为新的编程接口

## 开放问题

- ⚠️ 哪些任务已经适合 2.0，哪些任务仍更适合 1.0？
- ⚠️ 2.0 团队应该如何同时管理代码、数据、模型和评测，避免只做"经验主义调参"？

## 来源

- [[../raw/2026-04-24-karpathy-software-2-0]]（⚠️ reconstruction: true）
- [[../raw/2026-04-24-karpathy-software-3-0]]
