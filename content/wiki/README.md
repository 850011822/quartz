---
type: moc
topic: LLM-Wiki 编译层
status: active
created: 2026-04-24
updated: 2026-04-24
tags: [llm-wiki, wiki, compiled]
related:
  - "[[../README|LLM-Wiki]]"
  - "[[../AGENTS]]"
  - "[[_example-page]]"
---

# wiki/ — 编译层

> LLM 维护的、互相链接的 markdown 页面集合。
> 这里是你日常浏览的地方；`raw/` 是素材池，你一般不直接看。

## 索引

```dataview
TABLE
  title AS "标题",
  status AS "状态",
  updated AS "更新"
FROM "03-Knowledge/LLM-Wiki/wiki"
WHERE type = "wiki"
SORT updated DESC
```

## 页面规范

见 [[../AGENTS#3-wiki-页面规范|AGENTS §3]]。

## 状态标记

| status | 含义 |
| ------ | ---- |
| `draft` | LLM 刚建，未被人复核 |
| `stable` | 已复核，可以引用 |
| `outdated` | 信息可能已过时，待更新 |
| `deprecated` | 保留但不再维护（合并到别处） |

## 目录约定

- 根层（`wiki/*.md`）放一般概念页
- 以 `_` 开头的是工作页（`_wip-xxx.md` / `_example-page.md`），不参与正式索引
- 可以按领域分子目录：`wiki/ai/`、`wiki/投资/`、`wiki/工程/`...（需要时再建）

## 样例

见 [[_example-page]]。
