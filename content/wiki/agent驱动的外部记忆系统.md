---
type: wiki
title: Agent 驱动的外部记忆系统
aliases: [agent-driven-memory, agent外部记忆, Eric-Ma-PKM]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-ericjma-obsidian-ai-pkm]]"
tags: [wiki, agent, memory, pkm, ericjma]
---

# Agent 驱动的外部记忆系统

## 一句话定义

Eric J. Ma 的实践：不只让 Obsidian 存笔记，而是让 coding agent **日常维护** vault——结构化会议纪要、自动回填人物/项目页、定期 sweep、校对引用——把 vault 变成 agent 可读写的**外部记忆层**。

## 和 Karpathy LLM Wiki 的异同

| 维度 | Karpathy | Eric J. Ma |
| ---- | -------- | ---------- |
| 重心 | 原始资料 → **编译成 wiki** | 日常工作流 → **agent 维护 vault** |
| 输入主体 | 文章/论文/数据 | 会议/transcript/Word/PDF/PPT/Excel |
| 编译产物 | 概念页、实体页、对比页 | people notes、project notes、摘要 |
| 人的角色 | 策展 + 提问 | 策展 + 审核 agent 改动 |
| 输出 | wiki 自身即终点 | **再发布到** Confluence/Jira/Gists/slides |
| Schema | CLAUDE.md | AGENTS.md（明确 note type 枚举） |

**核心差异**：Karpathy 的 wiki 是**知识编译产物**；Eric 的 vault 是**工作记忆系统**。两者可以叠加。

## Eric 让 agent 做什么

按文章原文（重建版）总结：

1. **会议纪要结构化**：transcript → 行动项 + 决定 + 参与者
2. **people / project 页面自动更新**：从 meeting note 抽取事件回填
3. **source → 摘要**：新资料进来自动生成关联页
4. **定期 sweep**：补缺失信息、修复断链
5. **引用与事实校对**：检查引用是否还指向有效来源

## 关键洞见

> plain text 天然适合 AI agent 读取与处理

Eric 多年前选 plain text 只是因为喜欢 graph view，但这个选择**恰好对上了 2025-2026 年 agent 的需求**。

## 三个角色定义

Eric 把 Obsidian vault 的三个角色拆得很清楚：

- **输入格式统一层**：各种格式 → markdown
- **外部记忆层**：agent 可读写的持久化知识
- **输出中间层**：markdown → Confluence / Jira / slides / Gists

## 对你的启发

你的 vault 如果要走 Eric 路线，需要补齐：

- [x] markitdown / pandoc（刚装）→ 格式统一
- [x] AGENTS.md（已建）→ 契约
- [ ] meeting note 模板 → 07-Templates 里建
- [ ] 会议录音 → transcript 管道（需要 Whisper 或类似工具）
- [ ] 定期 sweep 的自动化触发（cron / hook / 手动）

## 相关

- [[llm-wiki|LLM Wiki（编译型）]]
- [[三层架构-raw-wiki-schema]]
- [[选型标准-笔记工具]]
- [[公开第二大脑|公开第二大脑（swyx 路线，非 Eric 路线）]]

## 和更多概念的关系（2026-04-24 补充）

- [[software-3-0]] — Agent 驱动的外部记忆是 Software 3.0 在知识管理的实践
- [[TIL-知识管理模式]] — Simon Willison 用脚本自动化 TIL，Eric 用 agent 自动化 vault——自动化程度的光谱
- [[building-a-second-brain]] — BASB 的 CODE 循环可以被 agent 部分自动化

([[../raw/2026-04-24-simon-willison-til-datasette|source: Simon Willison]] · [[../raw/2026-04-24-karpathy-software-3-0|source: Karpathy Software 3.0]])

## 来源

- [[../raw/2026-04-24-ericjma-obsidian-ai-pkm]]（重建版，待原文补全）
