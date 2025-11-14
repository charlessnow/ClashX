<h1 align="center">
  <img src="https://github.com/charlessnow/ClashX/raw/master/clashx.png" alt="Clash" width="200">
  <br>
  ClashX
  <br>
</h1>

<div align="center">

[English](README.md) | [简体中文](README_zh-CN.md)

</div>

## ⚠️ 情况说明 / Notice

**中文:**

本项目使用的是 [yichengchen](https://github.com/yichengchen) 大佬以前的代码。因为我自己使用时发现在 macOS 26 (Sequoia) 系统下无法使用,所以重新修改代码使其在 macOS 26 可用。源代码来源于 [bannedbook/ClashX](https://github.com/bannedbook/ClashX)。git 历史记录丢失是因为在修改出问题后重新搞的时候把 `.git` 文件删掉了。

**English:**

This project is based on code originally created by [yichengchen](https://github.com/yichengchen). I discovered that the original version was not compatible with macOS 26 (Sequoia), so I modified the code to make it work on macOS 26. The source code was forked from [bannedbook/ClashX](https://github.com/bannedbook/ClashX). The git history was lost because I accidentally deleted the `.git` folder when recreating the project after encountering some issues.

---

## 🌐 官方网站

**官方网站**: [https://clashx.tech](https://clashx.tech)

- 📥 [下载最新版本](https://clashx.tech/download)
- 📖 [使用文档与教程](https://clashx.tech/tutorial)
- ❓ [常见问题](https://clashx.tech/tutorial#faq)

---

基于 Clash 的 macOS 规则代理客户端。

ClashX 旨在提供一个简单轻量化的代理客户端，具有直观的用户界面。

## ⚠️ 注意

- **官方网站**: 请访问官方网站 **clashx.tech**。
- ClashX / ClashX Pro 只是一个代理工具，不提供任何代理服务器。如果服务器不可用或与服务器续费有关的问题，请与您的提供商联系。

## ✨ 功能特性

- 支持 HTTP/HTTPS 和 SOCKS 协议
- Surge 风格的配置
- GeoIP 规则支持
- 支持 Vmess/Shadowsocks/Socks5/Trojan 协议
- 支持 Netfilter TCP 重定向
- 支持 macOS 10.14+
- **支持 macOS 15+ (Sequoia) 并修复兼容性问题**

## 📥 安装

**ClashX Pro** 支持增强模式以及更多 Clash Premium Core 特性。

从 [Releases](https://github.com/charlessnow/ClashX/releases) 页面下载。

## 🔨 从源码构建

### 环境要求

- macOS 10.14 或更高版本
- Xcode 15.0+
- Python 3
- Golang 1.21+

### 构建步骤

1. **安装 Golang**
   ```bash
   brew install golang
   # 或从 https://golang.org 下载
   ```

2. **安装依赖**
   ```bash
   bash install_dependency.sh
   ```

3. **打开并构建**
   ```bash
   open ClashX.xcworkspace
   # 在 Xcode 中构建 (Cmd+R)
   ```

## ⚙️ 配置

### 默认路径

默认配置目录为 `$HOME/.config/clash`

默认配置文件名为 `config.yaml`。你可以使用自定义配置名称，并在 `配置` 菜单中切换。

更多详情请查看 [SS-Rule-Snippet for Clash](https://github.com/Hackl0us/SS-Rule-Snippet/blob/master/LAZY_RULES/clash.yaml)。

## 🔧 高级配置

### 修改代理端口号

在菜单栏 → 配置 → 更多设置中修改对应端口号。

### 自定义状态栏图标

将你的图标文件放置在 `~/.config/clash/menuImage.png`，然后重启 ClashX。

### 修改系统忽略列表

进入菜单 → 配置 → 设置 → 绕过这些主机和域名的代理设置。

### URL Schemes

- **导入远程配置：**
  ```
  clash://install-config?url=http%3A%2F%2Fexample.com&name=example
  ```

- **重新加载当前配置：**
  ```
  clash://update-config
  ```

### 获取进程名称

在配置文件中添加以下内容，并将代理模式设置为规则。通过帮助菜单查看日志：

```yaml
script:
  code: |
    def main(ctx, metadata):
      # 记录进程名
      ctx.log('Process Name: ' + ctx.resolve_process_name(metadata))
      return 'DIRECT'
```

### 关闭通知

1. 在系统设置中关闭 ClashX 的推送权限
2. 在菜单栏 → 配置 → 更多设置中选中"减少通知"

**注意：** 强烈不推荐这么做，这可能导致 ClashX 的很多重要错误提醒无法显示。

### 全局快捷键

- 在菜单栏配置 → 更多配置中，自定义对应功能的快捷键（需要 v1.116.1+）
- 或使用 AppleScript 设置，详情点击 [全局快捷键](Shortcuts.md)

## ❓ 常见问题

**问：如何获取带外部 IP 的 shell 命令？**
答：点击 ClashX 菜单图标，然后按 `Option-Command-C`

## 🤝 贡献

欢迎提交 Pull Request！对于重大更改，请先开 issue 讨论你想要改变的内容。

## 📄 许可证

详见 [LICENSE](LICENSE) 文件。

## 🙏 致谢

基于原始 ClashX 项目。
