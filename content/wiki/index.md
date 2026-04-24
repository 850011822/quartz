---
type: index
title: LLM-Wiki 内容索引
status: stable
created: 2026-04-24
updated: 2026-04-24
batch_1_added: 2026-04-24
tags: [wiki, index, llm-wiki]
---

# index.md — 内容索引

> 所有 wiki 页的一句话目录。每次 ingest / 新建页后由 agent 追加或更新。
> 查询先查这里，定位后再读具体页。

## 概念页

- [[llm-wiki]] — 编译型、由 LLM 持续维护的知识库模式（对立于 RAG）+ 三路线对照
- [[memex]] — Vannevar Bush 1945 年的个人知识装置设想，LLM Wiki 的思想前身
- [[三层架构-raw-wiki-schema]] — Raw（只读）/ Wiki（LLM 写）/ Schema（共演化）
- [[ingest-query-lint-操作循环]] — 摄入 / 查询 / 体检三操作及其相互关系
- [[公开第二大脑]] — swyx：Learn in Public + Obsidian Publish + Digital Garden
- [[选型标准-笔记工具]] — swyx + Eric 的选型标准交叉对照
- [[learn-in-public]] — swyx 理念：公开学习 → Luck Surface Area（draft）
- [[agent驱动的外部记忆系统]] — Eric J. Ma：agent 日常维护 vault 的完整工作流
- [[building-a-second-brain]] — Tiago Forte 的 BASB 方法论：CODE 循环 + 外部系统优化
- [[PARA方法]] — Projects / Areas / Resources / Archive 四分类信息组织系统
- [[progressive-summarization]] — 渐进式摘要：分层压缩笔记的提炼技术
- [[evergreen-notes]] — Andy Matuschak：持续演化、原子化、密集链接的笔记理念
- [[zettelkasten]] — Luhmann 卡片盒方法：原子化 + 超文本 + 个人思考工具
- [[原子化笔记]] — 原子性原则：每张笔记聚焦一个知识构件（跨 Zettelkasten + Evergreen Notes）
- [[structure-note]] — 结构笔记 / Hub Note：关于其他笔记之间关系的元笔记
- [[TIL-知识管理模式]] — Simon Willison 的 TIL 模式：Git + Markdown + Datasette 自维护知识系统
- [[digital-garden]] — 数字花园：按主题关联组织、持续生长、不完美公开的知识发布方式
- [[garden-vs-stream]] — Garden vs Stream：Caufield 的核心隐喻——空间拓扑 vs 时间线流
- [[software-3-0]] — Karpathy 的 Software 1.0→2.0→3.0 范式演进框架
- [[LLM-as-OS]] — LLM 作为操作系统：Karpathy 的 LLM 生态类比（draft）
- [[MOC-map-of-content]] — Map of Content：Nick Milo 的动态枢纽笔记概念（Structure Note 现代版）
- [[LYT-linking-your-thinking]] — Linking Your Thinking 框架：以链接为核心、MOC 为结构的知识管理方法论
- [[双向链接]] — 双向链接：现代知识管理工具的基础特性（Obsidian / Roam / Logseq）
- [[obsidian-ecosystem]] — Obsidian 生态系统：Eleanor Konik Roundup 视角的生态全景
- [[GTD-getting-things-done]] — David Allen GTD：Capture→Clarify→Organize→Reflect→Engage 五步任务管理

### 2026-04-24 Batch 1 — AI 工程核心概念

- [[software-2-0]] — Karpathy 的 Software 2.0：模型参数作为程序、数据与训练成为新的编程入口
- [[RAG-retrieval-augmented-generation]] — 检索增强生成：参数化记忆 + 非参数化记忆的组合式架构
- [[vector-database]] — 向量数据库：为 embeddings 提供相似度检索、过滤与存储的基础设施层
- [[embedding]] — Embedding：把文本/代码映射为语义向量表示的表示层技术
- [[prompt-engineering]] — 提示工程：把任务接口、约束、示例与输出格式设计清楚的实践
- [[AI-agent-architecture]] — AI agent 架构：augmented LLM、workflow 与 agent 的系统设计框架
- [[workflow-vs-agent]] — Workflow 与 Agent 的核心分界：控制权在代码还是模型
- [[prompt-chaining]] — 提示链：把复杂任务拆成多步串行子任务
- [[evaluator-optimizer]] — 评审-优化循环：生成、评估、迭代打磨的工作流模式
- [[augmented-LLM]] — 增强型 LLM：接入检索、工具、记忆后的基础 agent 构件

### 2026-04-24 Batch 2 — 知识管理方法论补全

- [[niklas-luhmann]] — Niklas Luhmann：把卡片盒变成沟通伙伴的社会学家与方法论源头
- [[how-to-take-smart-notes]] — Ahrens：把 Zettelkasten 翻译成现代写作工作流的代表作
- [[PKM-personal-knowledge-mastery]] — Jarche 的 PKM：Seek > Sense > Share 的个人知识流框架
- [[sense-making]] — 意义建构：把信息、经验和对话转成可行动理解的过程
- [[spaced-repetition]] — 间隔重复：按遗忘曲线安排复习的长期记忆方法
- [[literature-notes]] — 文献笔记：阅读与永久笔记之间的中间加工层

### 2026-04-24 Batch 3 — 工具生态

- [[dataview-obsidian]] — Dataview：把 Obsidian metadata 变成可查询视图的插件
- [[dataviewjs]] — DataviewJS：用 JavaScript API 编写更灵活的 Dataview 查询与展示
- [[templater-obsidian]] — Templater：把模板、变量与脚本结合起来的笔记自动化插件
- [[quartz-static-site]] — Quartz：面向 Obsidian / digital garden 的静态发布工具链
- [[logseq]] — Logseq：local-first、block-first、outliner-first 的知识管理工具
- [[notion]] — Notion：协作工作区与数据库视图驱动的文档平台

### 2026-04-24 Batch 4 — 前沿趋势

- [[MCP-model-context-protocol]] — MCP：连接 AI 应用、工具、资源和提示模板的开放协议
- [[openai-agents-sdk]] — OpenAI Agents SDK：面向服务端 orchestration 的 agent runtime
- [[LLM-as-judge]] — LLM 作为评审器：按 rubric 评价模型与 agent 输出的评测模式
- [[coding-agent-ecosystem]] — Cursor / Windsurf / Cline 等代码 agent 生态图景
- [[AI-native-note-taking]] — AI-native 笔记：AI 成为笔记系统一等公民的产品趋势

## 工作页 / 模板

- [[_example-page]] — wiki 页模板示例（deprecated，已由 llm-wiki 取代）

## Dataview 自动列表

```dataview
TABLE
  title AS "标题",
  status AS "状态",
  updated AS "更新",
  length(sources) AS "来源数"
FROM "03-Knowledge/LLM-Wiki/wiki"
WHERE type = "wiki"
SORT updated DESC
```

## 来源清单

```dataview
TABLE
  file.name AS "文件",
  captured AS "归档",
  author AS "作者"
FROM "03-Knowledge/LLM-Wiki/raw"
WHERE type = "raw"
SORT captured DESC
```
