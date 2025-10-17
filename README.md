<h1 align="center">
  <img src="https://github.com/charlessnow/ClashX/raw/master/clashx.png" alt="Clash" width="200">
  <br>
  ClashX
  <br>
</h1>

<div align="center">

[English](README.md) | [简体中文](README_zh-CN.md)

</div>

## 🌐 Official Website

**Official Website**: [https://clashx.tech](https://clashx.tech)

- 📥 [Download Latest Version](https://clashx.tech/download)
- 📖 [Documentation & Tutorial](https://clashx.tech/tutorial)
- ❓ [FAQ](https://clashx.tech/tutorial#faq)

---

A rule-based proxy client for macOS based on Clash.

ClashX aims to provide a simple and lightweight proxy client with an intuitive interface.

## ⚠️ Notice

- **Official Website**: Please visit the official website at **clashx.tech**.
- ClashX / ClashX Pro is only a proxy tool and does not provide any proxy servers. For server-related issues or renewals, please contact your service provider.

## ✨ Features

- HTTP/HTTPS and SOCKS protocol support
- Surge-like configuration
- GeoIP rule support
- Support for Vmess/Shadowsocks/Socks5/Trojan protocols
- Netfilter TCP redirect support
- macOS 10.14+ compatibility
- **macOS 15+ (Sequoia) support with compatibility fixes**

## 📥 Installation

**ClashX Pro** comes with enhanced mode and other Clash Premium Core features.

Download from the [Releases](https://github.com/charlessnow/ClashX/releases) page.

## 🔨 Build from Source

### Prerequisites

- macOS 10.14 or later
- Xcode 15.0+
- Python 3
- Golang 1.21+

### Build Steps

1. **Install Golang**
   ```bash
   brew install golang
   # or download from https://golang.org
   ```

2. **Install dependencies**
   ```bash
   bash install_dependency.sh
   ```

3. **Open and build**
   ```bash
   open ClashX.xcworkspace
   # Build in Xcode (Cmd+R)
   ```

## ⚙️ Configuration

### Default Paths

The default configuration directory is `$HOME/.config/clash`

The default configuration file name is `config.yaml`. You can use custom config names and switch between them in the `Config` menu.

For more details, check out [SS-Rule-Snippet for Clash](https://github.com/Hackl0us/SS-Rule-Snippet/blob/master/LAZY_RULES/clash.yaml).

## 🔧 Advanced Configuration

### Change Proxy Port

Go to Menu Bar → Config → More Settings and modify the corresponding port numbers.

### Customize Status Menu Icon

Place your icon file at `~/.config/clash/menuImage.png`, then restart ClashX.

### Change Default System Ignore List

Navigate to Menu → Config → Settings → Bypass proxy settings for these Hosts & Domains.

### URL Schemes

- **Import remote config:**
  ```
  clash://install-config?url=http%3A%2F%2Fexample.com&name=example
  ```

- **Reload current config:**
  ```
  clash://update-config
  ```

### Get Process Name

Add the following to your config file and set proxy mode to rule. View logs via the Help menu:

```yaml
script:
  code: |
    def main(ctx, metadata):
      # Log ProcessName
      ctx.log('Process Name: ' + ctx.resolve_process_name(metadata))
      return 'DIRECT'
```

### Disable Notifications

1. Go to System Settings and disable ClashX notification permissions
2. Enable "Reduce Notifications" in Menu Bar → Config → More Settings

**Note:** Not recommended as you may miss important error notifications.

### Global Shortcuts

- Customize shortcuts in Menu Bar → Config → More Settings (requires v1.116.1+)
- Or use AppleScript - see [Shortcuts Guide](Shortcuts.md)

## ❓ FAQ

**Q: How to get shell commands with external IP?**
A: Click the ClashX menu icon and press `Option-Command-C`

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

## 📄 License

See [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

Based on the original ClashX project.
