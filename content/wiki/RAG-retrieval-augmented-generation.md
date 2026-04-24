---
type: wiki
title: Retrieval-Augmented Generation (RAG)
aliases: [RAG-retrieval-augmented-generation, RAG, retrieval-augmented-generation]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-lewis-rag-paper]]"
  - "[[../raw/2026-04-24-openai-embeddings-guide]]"
  - "[[../raw/2026-04-24-pinecone-vector-database]]"
tags: [wiki, rag, retrieval, llm, embeddings, vector-database]
---

# Retrieval-Augmented Generation (RAG)

## 一句话定义

RAG 是把语言模型的**参数化记忆**和外部知识库的**非参数化记忆**结合起来：先检索，再基于检索结果生成答案。

## 论文里的核心结构

Lewis 等人在 2020 年提出的 RAG 把两部分拼在一起：

1. **Retriever**：从外部文档库找相关片段。
2. **Generator**：读取这些片段并生成答案。

关键不是简单"搜一下再贴原文"，而是让检索结果直接参与生成过程。

## 为什么 RAG 会流行

- 纯参数模型难以快速更新知识。
- 很难提供清晰来源。
- 企业和个人往往已经有大量外部文档，不可能都塞进参数。

RAG 给出了一种折中：**把知识放在外部，把推理放在模型里**。

## 两种常见视角

| 视角 | 关注点 |
| ---- | ------ |
| 研究论文视角 | retriever + generator 的联合建模 |
| 工程实现视角 | chunking + embedding + vector DB + reranking + prompting |

## 典型链路

1. 文档切块
2. 生成 [[embedding]]
3. 写入 [[vector-database]]
4. 查询时检索 top-k 片段
5. 把片段交给生成模型回答

## 和 LLM Wiki 的差别

[[llm-wiki]] 与 RAG 的根本区别在于**知识组织发生的时机**：

- RAG：查询时临时检索 + 临时合成
- LLM Wiki：摄入时就把知识编译成持续维护的页面

因此，RAG 更像运行时检索；LLM Wiki 更像预编译知识库。

## 和其他概念的关系

- [[embedding]] — 检索通常先把文本和查询编码成 embedding
- [[vector-database]] — 向量数据库常作为 RAG 的存储与检索层
- [[llm-wiki]] — 两者都处理外部知识，但一个在 query time，一个在 ingest time
- [[AI-agent-architecture]] — 很多 agent 系统把 RAG 当作基础增强能力之一

## 开放问题

- ⚠️ RAG 的主要瓶颈到底在检索、重排、上下文构造还是生成阶段？
- ⚠️ 当资料稳定且可预编译时，RAG 是否仍优于 [[llm-wiki]]？

## 来源

- [[../raw/2026-04-24-lewis-rag-paper]]
- [[../raw/2026-04-24-openai-embeddings-guide]]
- [[../raw/2026-04-24-pinecone-vector-database]]
