---
type: moc
created: 2026-04-23
updated: 2026-04-24
tags: [project, moc, ai-knowledge-system]
related:
  - "[[README]]"
  - "[[../../02-Areas/AI工程/README|AI工程]]"
  - "[[../../02-Areas/量化投资/README|量化投资]]"
status: active
---

# 项目索引

最后更新：2026-04-23

## 已迁入新 vault（第一批）

- [[元工程框架v2|元工程框架 v2]]
- [[详细问题手册与闭环设计|详细问题手册与闭环设计]]
- [[赚钱机器工程框架|赚钱机器工程框架]]
- [[investment_cycle_analysis|投资周期分析]]
- [[TOP_OPPORTUNITIES|最值得做的 3 个机会]]
- [[100_money_opportunities|100 大变现机会清单]]

## 当前执行路线与验证文档

- [[长任务默认执行约定|长任务默认执行约定]]
- [[信息源工具盘点与GitHub候选|信息源工具盘点与 GitHub 候选]]
- [[AI新闻RSS第一批接入清单|AI 新闻 RSS 第一批接入清单]]
- [[GitHub开源复刻能力地图|GitHub 开源复刻能力地图]]
- [[GitHub仓库复刻优先级清单|GitHub 仓库复刻优先级清单]]
- [[RSS日报第一验证实现路线-GitHub优先|RSS 日报第一验证实现路线 - GitHub 优先]]
- [[RSS日报第一验证版代码落地|RSS 日报第一验证版代码落地]]
- [[自动化与切号续命联合实现路线|自动化与切号续命联合实现路线]]
- [[Obsidian升级差距研究过程与安排|Obsidian 升级差距研究过程与安排]]
- [[AI圈公开Obsidian用法案例|AI 圈公开 Obsidian 用法案例]]
- [[Obsidian升级清单-可直接抄|Obsidian 升级清单（可直接抄）]]
- [[../../03-Knowledge/LLM-Wiki/README|LLM-Wiki 骨架]]
- [[Obsidian可视化与插件差距盘点|Obsidian 可视化与插件差距盘点]]

## 已完成框架文档

| 文档 | 历史来源 | 说明 |
| ---- | -------- | ---- |
| [[元工程框架v2|元工程框架v2]] | `legacy/AI_Knowledge/元工程框架v2.md` | 完整架构图 |
| [[详细问题手册与闭环设计|详细问题手册]] | `legacy/AI_Knowledge/详细问题手册与闭环设计.md` | 闭环设计 |
| [[赚钱机器工程框架|赚钱机器框架]] | `legacy/AI_Knowledge/赚钱机器工程框架.md` | 工程化方案 |

## 已识别的守护层

| Agent | 状态 | 职责 |
| ----- | ---- | ---- |
| GuardianAgent-01 | 🟢 | 健康监控 |
| GuardianAgent-02 | 🟢 | 错误追踪 |
| GuardianAgent-03 | 🟢 | 状态报告 |

## 已创建的文件结构

```text
AI_Knowledge/
├── agents/
│   └── guardian/
│       ├── agent_watchdog.py
│       ├── health_checker.py
│       ├── error_tracker.py
│       └── status_reporter.py
├── logs/
│   ├── error_log.md
│   ├── watchdog_log.txt
│   └── error_knowledge_base.json
└── status/
    ├── guardian_status.md
    ├── agent_heartbeat.json
    └── system_status.json
```

## 可用工具清单

### MiniMax Skills

位置：`legacy/AI_Knowledge/tools/skills-main`

- frontend-dev
- fullstack-dev
- android-native-dev
- ios-application-dev
- flutter-dev
- shader-dev
- gif-sticker-maker
- minimax-pdf
- minimax-xlsx
- minimax-docx
- minimax-multimodal-toolkit
- vision-analysis

### G0DM0D3

- 位置：`legacy/AI_Knowledge/tools/g0dm0d3-main`
- 说明：50+ 模型聚合工具，需 OpenRouter API Key

## 当前判断

- 这个项目不是单一脚本，而是一整套研究执行底座
- 新 vault 当前最需要的是把高价值 Markdown 方法论重新收束成可导航入口
- `agents/`、`tools/`、`status/` 应该先做说明页，再决定是否进一步迁移源码快照
