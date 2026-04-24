---
type: wiki
title: PARA 方法
aliases: [PARA, PARA-method, Projects-Areas-Resources-Archive]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-tiago-forte-basb-para]]"
tags: [wiki, knowledge-management, para, organization, tiago-forte]
---

# PARA 方法

## 一句话定义

Tiago Forte 设计的信息组织系统：所有数字信息归入四个且仅四个类别——Projects / Areas / Resources / Archive，按**可行动性**排序。

## 四个类别

| 类别 | 定义 | 时间属性 | 例子 |
| ---- | ---- | -------- | ---- |
| **Projects** | 有明确目标的短期努力 | 有截止日 | 写博客、搬家、发布产品 |
| **Areas** | 需要持续管理的长期责任 | 无截止日 | 健康、财务、团队管理 |
| **Resources** | 未来可能有用的主题或兴趣 | 按需 | AI 研究、烹饪、旅行目的地 |
| **Archive** | 前三类中不再活跃的项目 | 已结束 | 完成的项目、过期的兴趣 |

## 核心设计原则

1. **只有四层**——如果组织系统和你的生活一样复杂，维护它就会消耗你活着的时间
2. **按可行动性排序**——Projects 最可行动，Archive 最不可行动
3. **跨平台通用**——同一套 PARA 可用于文件系统、笔记 app、邮件、云盘
4. **Clean Slate 启动法**——不要整理旧文件，全部移到 Archive，从零开始

## 和 LLM-Wiki 三层架构的对比

| 维度 | PARA | [[三层架构-raw-wiki-schema]] |
| ---- | ---- | ---- |
| 分类依据 | 可行动性 | 写权限归属 |
| 谁维护 | 人 | LLM |
| 适用场景 | 个人全部数字生活 | 特定知识领域的深度编译 |
| 层数 | 4（P/A/R/A） | 3（Raw/Wiki/Schema） |

PARA 可以作为 LLM-Wiki **外部**的 vault 组织框架：例如本 vault 用 PARA 变体（Projects/Areas/Knowledge/Sources/Outputs）组织全局，LLM-Wiki 是 Knowledge 层内的一个子系统。

## 和其他概念的关系

- [[building-a-second-brain]] — PARA 是 BASB 的组织层（CODE 中的 O）
- [[三层架构-raw-wiki-schema]] — PARA 影响了三层架构的"分类即权限"思想
- [[选型标准-笔记工具]] — swyx 选择 Obsidian 的原因之一是它对 PARA 的天然支持
- [[zettelkasten]] — Zettelkasten 用关联网络组织，PARA 用层级文件夹组织，两者可共存

## 开放问题

- ⚠️ PARA 的 Resources 和 Areas 边界模糊——"学习 AI"是 Area 还是 Resource？
- ⚠️ PARA 在多人协作场景下如何适配？每人一套还是共享一套？

## 来源

- [[../raw/2026-04-24-tiago-forte-basb-para]]
- 原链接：<https://fortelabs.com/blog/para/>
