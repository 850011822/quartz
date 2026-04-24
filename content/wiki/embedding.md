---
type: wiki
title: Embedding
aliases: [embedding, embeddings, 向量嵌入, semantic-embedding]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-openai-embeddings-guide]]"
  - "[[../raw/2026-04-24-pinecone-vector-database]]"
tags: [wiki, embeddings, semantic-search, vector-representation, retrieval]
---

# Embedding

## 一句话定义

Embedding 是把文本、代码或其他对象映射成一串数字，使语义相近的内容在向量空间中彼此靠近。

## 为什么它重要

机器并不直接"理解"文本语义；embedding 提供了一种可计算的语义表示，让系统可以进行：

- 相似度搜索
- 聚类
- 去重
- 推荐
- 检索增强生成

## 在工程里的角色

embedding 更像**表示层**，而不是回答层：

- 它负责把内容压缩成便于比较的向量。
- 它通常不直接生成最终答案。
- 它常和 [[vector-database]] 一起出现，构成检索系统底座。

## 一个最常见的链路

1. 把原始文档切成 chunks
2. 为每个 chunk 生成 embedding
3. 为用户问题也生成 embedding
4. 比较相似度，找到最相关的 chunks
5. 把原文交给 [[RAG-retrieval-augmented-generation]] 或 agent 使用

## 工程上真正决定效果的点

- chunk 切分是否合理
- metadata 是否完整
- embedding model 是否适配语言和领域
- 是否做重排和质量评测

因此，embedding 很重要，但它从来不是单点魔法。

## 和其他概念的关系

- [[vector-database]] — 向量数据库负责存和搜 embeddings
- [[RAG-retrieval-augmented-generation]] — RAG 依赖 embeddings 实现语义检索
- [[software-2-0]] — embedding 是 learned representation 的典型例子

## 开放问题

- ⚠️ 高维 embedding 到底编码了多少"语义"，多少只是统计共现结构？
- ⚠️ 通用 embedding 模型和领域专用 embedding 模型的分界线在哪里？

## 来源

- [[../raw/2026-04-24-openai-embeddings-guide]]（⚠️ reconstruction: true）
- [[../raw/2026-04-24-pinecone-vector-database]]
