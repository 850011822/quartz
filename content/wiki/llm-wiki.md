---
type: wiki
title: LLM Wiki
aliases: [llm-wiki, Karpathy LLM Wiki, 编译型知识库]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-karpathy-llm-wiki-gist]]"
tags: [wiki, llm, knowledge-management, karpathy]
---

# LLM Wiki

## 一句话定义

让 LLM 把原始资料**一次性编译**成一组互相链接的 markdown 页面并**持续维护**，区别于每次查询都重新检索的 RAG。

## 和 RAG 的关键差别

| 维度 | RAG | LLM Wiki |
| ---- | --- | -------- |
| 时机 | 查询时检索+合成 | **摄入时**就编译进 wiki |
| 累积 | 不累积，每次重来 | **持续累积**的产物 |
| 跨文档综合 | 每次临时拼 | 已经预先合成好 |
| 矛盾处理 | 查询时临时发现 | **摄入时就标记** |
| 载体 | 向量库 | markdown 文件 + 双链 |

核心原话（Karpathy）：
> "The wiki is a persistent, compounding artifact."

## 架构

见独立页：[[三层架构-raw-wiki-schema]]

简版：

1. **Raw sources** — 只读、源事实
2. **The wiki** — LLM 独占写权的 markdown 集合
3. **The schema** — `CLAUDE.md` / `AGENTS.md`，规则文件

## 三类操作

见独立页：[[ingest-query-lint-操作循环]]

简版：

- **Ingest** 新资料进来，编译到 10-15 个相关 wiki 页
- **Query** 查询结果**要反写**回 wiki，否则不累积
- **Lint** 定期体检，找矛盾、过时、孤儿、缺失

## 为什么人维护不了、LLM 可以

瓶颈不是阅读/思考，是**书记员工作**（cross-reference、摘要、一致性维护）。
LLM 不累、不忘更新、能一次改 15 个文件 → 维护成本趋近零。

## 适用场景

- 个人：目标 / 健康 / 心理 / 自我成长
- 研究：某个主题持续数周数月的深度追踪
- 读书：人物 / 主题 / 情节的陪伴式 wiki（类似 Tolkien Gateway）
- 团队：Slack / 会议 / 客户电话 → 内部 wiki
- 竞争分析、尽调、旅行规划、课程笔记、爱好深潜

## 和其他概念的关系

- 延续 [[memex|Vannevar Bush 的 Memex]] 愿景，**用 LLM 解决"谁来维护"的老问题**
- 是 [[../README|本 vault 里 LLM-Wiki 子系统]] 的方法论底座
- 实操落地见 [[../../../01-Projects/AI-Knowledge-System/Obsidian升级清单-可直接抄|Obsidian 升级清单]]

## 实现的可选件

按需加，不是必须：

- `index.md` — 内容索引（适合中等规模 ~100 sources / 数百页）
- `log.md` — 时序日志（append-only，`## [YYYY-MM-DD] ingest | ...`）
- 本地搜索：[qmd](https://github.com/tobi/qmd)（BM25 + 向量 + 重排）
- Obsidian Web Clipper / Dataview / Marp / 图片本地化
- Git（vault 本身就是 markdown 仓库）

## 开放问题 / 待验证

- ⚠️ 单资料触发的 wiki 页面连锁更新（10-15 页）如何保持一致性？lint 能否检测出漏改？
- ⚠️ 中等规模以上是否还能只靠 `index.md`？什么时候必须上搜索引擎？
- ⚠️ 多 agent / 多人并发编辑时的冲突处理？

## 三种路线对照（2026-04-24 补充）

| 路线 | 代表人 | 核心定位 | 写作主体 | 受众 |
| ---- | ------ | -------- | -------- | ---- |
| **编译型 wiki** | Karpathy | raw → wiki 知识编译 | LLM | 自己 |
| **agent 外部记忆** | Eric J. Ma | 工作流 → agent 维护 vault | agent + 人审 | 自己/团队 |
| **公开知识花园** | swyx | Learn in Public + Publish | 人 | 公众 |

三者可叠加：wiki 由 LLM 编译，agent 日常维护，人审后部分公开。
详见 [[agent驱动的外部记忆系统]] · [[公开第二大脑]]

## 和知识管理方法论谱系的关系（2026-04-24 补充）

LLM Wiki 可以被看作多种经典知识管理方法论的"LLM 自动化版本"：

| 经典方法 | LLM Wiki 对应 |
| -------- | ------------- |
| [[zettelkasten\|Zettelkasten]] 的原子化 + 密集链接 | wiki 页面就是机器版 Zettel |
| [[evergreen-notes\|Evergreen Notes]] 的"持续演化" | wiki 页面随新资料持续更新 |
| [[building-a-second-brain\|BASB]] 的 CODE 循环 | ingest = Capture+Organize+Distill，query = Express |
| [[progressive-summarization\|渐进式摘要]] 的分层提炼 | LLM 一步完成 L1→L4 |
| [[PARA方法\|PARA]] 的可行动性分类 | 三层架构按写权限分类 |

([[../raw/2026-04-24-tiago-forte-basb-para|source: Tiago Forte BASB]] · [[../raw/2026-04-24-andy-matuschak-evergreen-notes|source: Andy Matuschak]] · [[../raw/2026-04-24-zettelkasten-de-introduction|source: Zettelkasten.de]])

## 来源

- 原文：[[../raw/2026-04-24-karpathy-llm-wiki-gist]]
- 原链接：<https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f>
- Eric 博客：[[../raw/2026-04-24-ericjma-obsidian-ai-pkm]]
- swyx 博客：[[../raw/2026-04-24-swyx-obsidian-brain]]
- 案例汇总：[[../../../01-Projects/AI-Knowledge-System/AI圈公开Obsidian用法案例]]
