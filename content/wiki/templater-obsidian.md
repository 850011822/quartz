---
type: wiki
title: Templater (Obsidian)
aliases: [templater-obsidian, templater, Obsidian Templater]
status: stable
created: 2026-04-24
updated: 2026-04-24
sources:
  - "[[../raw/2026-04-24-templater-docs]]"
tags: [wiki, obsidian, templater, templates, automation]
---

# Templater (Obsidian)

## 一句话定义

Templater 是 Obsidian 的模板自动化插件：它不只填充占位符，还能执行 JavaScript，把重复笔记工作流程序化。

## 为什么大家会把它当核心插件

因为它把很多重复动作自动化了：

- 新建项目页骨架
- 自动填日期、路径、frontmatter
- 根据上下文插入不同模板
- 通过 `tp.file`、`tp.obsidian` 和 `tp.user` 调用更复杂逻辑

## 它的真正价值

Templater 让 Obsidian 从"会写 markdown 的编辑器"，变成"能执行笔记生成脚本的工作台"。

## 它和 Dataview 的分工

- [[templater-obsidian]]：生成结构、自动化输入
- [[dataview-obsidian]]：读取结构、自动化展示

两者经常是配套使用的。

## 适用场景

- daily / weekly / meeting notes
- project templates
- people / book / source note 自动骨架
- 标准化 frontmatter

## 来源

- [[../raw/2026-04-24-templater-docs]]（⚠️ reconstruction: true）
