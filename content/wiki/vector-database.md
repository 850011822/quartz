---
type: wiki
title: Vector Database
aliases: [vector-database, 向量数据库, vector-db]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-pinecone-vector-database]]"
  - "[[../raw/2026-04-24-openai-embeddings-guide]]"
tags: [wiki, vector-database, retrieval, embeddings, semantic-search]
---

# Vector Database

## 一句话定义

向量数据库是专门面向 embeddings 的存储与检索系统，用相似度搜索而不是精确匹配来找相关内容。

## 它解决什么问题

传统数据库擅长精确查询：某个 id、某个字段值、某个时间范围。

但当你要问"这段内容和我的问题语义上最像什么"时，就需要对高维向量做近邻搜索。向量数据库就是为这个场景设计的。

## 核心能力

- 存储向量及其原文引用
- 相似度搜索
- metadata filtering
- CRUD
- 索引和扩展能力
- 需要时的重排或后处理

## 典型工作流

1. 用 [[embedding]] 模型把文档切片编码成向量。
2. 把向量与元数据一起写入库中。
3. 把查询也编码成向量。
4. 用 ANN 搜索找最近邻。
5. 取回原文，供 [[RAG-retrieval-augmented-generation]] 或其他系统使用。

## 它不是什么

- 不是大模型本身。
- 不是知识真相来源；它只保存表示和索引。
- 不是完整应用；它通常只是检索基础设施层。

## 和向量索引的区别

按 Pinecone 的说法，单独的 vector index 主要解决"怎么快搜"；vector database 还补上数据库能力、过滤、扩展和运维特性。

## 和其他概念的关系

- [[embedding]] — embedding 是被存进向量数据库的对象
- [[RAG-retrieval-augmented-generation]] — RAG 常用向量数据库做非参数化记忆层
- [[llm-wiki]] — LLM Wiki 不以向量检索为中心，而以预编译页面为中心

## 开放问题

- ⚠️ 什么时候应该用专门的向量数据库，什么时候在 PostgreSQL / SQLite 扩展上就够了？
- ⚠️ 在真实系统里，检索质量更受 embedding 影响，还是更受 chunking / metadata 设计影响？

## 来源

- [[../raw/2026-04-24-pinecone-vector-database]]
- [[../raw/2026-04-24-openai-embeddings-guide]]
