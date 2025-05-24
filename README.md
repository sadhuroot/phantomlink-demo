PhantomLink Pro
```
██████  ██   ██  █████  ███    ██ ████████  ██████  ███    ███     ██      ██ ███    ██ ██   ██ 
██   ██ ██   ██ ██   ██ ████   ██    ██    ██    ██ ████  ████     ██      ██ ████   ██ ██  ██  
██████  ███████ ███████ ██ ██  ██    ██    ██    ██ ██ ████ ██     ██      ██ ██ ██  ██ █████   
██      ██   ██ ██   ██ ██  ██ ██    ██    ██    ██ ██  ██  ██     ██      ██ ██  ██ ██ ██  ██  
██      ██   ██ ██   ██ ██   ████    ██     ██████  ██      ██     ███████ ██ ██   ████ ██   ██ 
                                                                                                
``` 


[![Version](https://img.shields.io/badge/Version-2.5-blue.svg)](https://github.com/yourusername/phantomlink-pro)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Bash](https://img.shields.io/badge/Bash-4.0%2B-orange.svg)](https://www.gnu.org/software/bash/)
[![Security](https://img.shields.io/badge/Security-Red%20Team-red.svg)](https://github.com/yourusername/phantomlink-pro)

> **⚠️ IMPORTANT NOTICE**: This tool is designed for authorized security testing, red team exercises, and educational purposes only. Always obtain proper authorization before use.

## 🚀 Overview

PhantomLink Pro is an advanced multi-layer URL obfuscation framework designed for security professionals. It creates sophisticated obfuscated URLs that bypass common security filters while maintaining operational effectiveness for authorized penetration testing and security assessments.

### 🎯 Key Features

- **🔐 Advanced Obfuscation Techniques**: Multiple encoding layers including Base64, ROT13, hex encoding, homoglyphs, and zero-width characters
- **🌐 Polymorphic JavaScript**: Dynamic code generation that changes with each execution
- **🎭 Chameleon Mode**: Environment-aware URLs that adapt behavior based on the target platform
- **🔒 Token Binding**: IP and browser fingerprint binding for enhanced access control
- **📦 HTML Smuggling**: Advanced payload delivery technique
- **🔄 Redirect Chains**: Multi-stage redirect chains with configurable depth
- **📱 Platform Optimization**: Specific optimizations for Discord, Slack, Outlook, Teams
- **🔔 Real-time Notifications**: Webhook and Telegram integration for click tracking
- **⏰ Expiration Control**: Time-based and click-limit link expiration
- **🛡️ Anti-Analysis Features**: VM detection, debugger detection, and sandbox evasion


### Common Options

| Option | Description | Default |
|--------|-------------|---------|
| `--url URL` | Target URL/endpoint (required) | - |
| `--lure-domain DOMAIN` | Domain for phishing simulation | login.service-portal.com |
| `--technique TYPE` | Obfuscation technique | layered |
| `--output DIR` | Output directory | ./phantom_links |
| `--clean` | Clean output (URL only) | false |

### Enhanced Techniques

| Option | Description |
|--------|-------------|
| `--evilginx` | Configure for Evilginx integration |
| `--redirector` | Use multi-stage redirect chain |
| `--fingerprint` | Include advanced browser fingerprinting |
| `--one-time` | Generate one-time use links |
| `--html-smuggle` | Use HTML smuggling technique |
| `--chameleon` | Create environment-aware adaptive URLs |
| `--polymorphic` | Use polymorphic JavaScript |

### Pro Features

| Option | Description |
|--------|-------------|
| `--token-binding` | Enable IP + fingerprint binding |
| `--redirect-chain N` | Generate N-level redirect chain (1-5) |
| `--expire-at TIMESTAMP` | Set link expiration (Unix timestamp) |
| `--click-limit N` | Maximum clicks before deactivation |
| `--platform TYPE` | Optimize for platform (discord/slack/outlook/teams) |
| `--webhook URL` | Send notifications to webhook |
| `--telegram-token TOKEN` | Telegram bot token |
| `--telegram-chat ID` | Telegram chat ID |


---

## 🎯 What's Included in the Demo

This demo version is designed to showcase the core concepts and capabilities of PhantomLink Pro while maintaining safety for educational use.

### ✅ Available Demo Features

#### 1. **Basic URL Encoding**
- Standard percent-encoding demonstration
- Shows how special characters are handled
- Educational output explaining each step

#### 2. **Base64 Encoding**
- Demonstrates base64 transformation
- Shows chaining with URL encoding
- Step-by-step process visualization

#### 3. **Limited Homoglyph Substitution**
- Basic character substitution (3 characters: a→а, e→е, o→о)
- Demonstrates the concept of visual spoofing
- Explains how full version extends this

#### 4. **Educational Output**
- Detailed explanation of each obfuscation step
- Visual demonstration of the transformation process
- Creation of demo HTML and log files

#### 5. **Feature Comparison Table**
- Clear comparison between demo and full version
- Visual indicators for available/unavailable features
- Helps understand the full tool's capabilities

### 📁 Demo Output Files

The demo creates safe, educational files:

1. **demo_redirect.html** - Shows how a redirect page would look
2. **demo_log.txt** - Example of logging output
3. Console output with step-by-step explanation

## ❌ Features NOT in Demo (Available in Full Version)

### 1. **Advanced Obfuscation**
- ❌ Full homoglyph character set (30+ substitutions)
- ❌ Zero-width character insertion
- ❌ Unicode normalization bypass
- ❌ Multi-layer encoding combinations

### 2. **Polymorphic JavaScript Engine**
- ❌ 6 different obfuscation patterns
- ❌ Dynamic variable generation
- ❌ Anti-debugging techniques
- ❌ VM/Sandbox detection

### 3. **Security Features**
- ❌ Token binding (IP + fingerprint)
- ❌ One-time use links
- ❌ Expiration control
- ❌ Click limiting

### 4. **Advanced Techniques**
- ❌ HTML smuggling
- ❌ Multi-stage redirect chains
- ❌ Environment-aware (chameleon) URLs
- ❌ Platform-specific optimizations

### 5. **Operational Features**
- ❌ Real-time notifications (webhook/Telegram)
- ❌ Campaign tracking
- ❌ Custom templates
- ❌ API integration

### 6. **Evasion Capabilities**
- ❌ Anti-analysis features
- ❌ Debugger detection
- ❌ Timing-based evasion
- ❌ Browser fingerprinting

## 🎓 Educational Value

The demo version is perfect for:

- **Learning** - Understand URL obfuscation concepts
- **Training** - Teach security awareness
- **Research** - Study obfuscation techniques
- **Development** - Build detection methods


## 💡 Demo Usage Examples

### Example 1: Basic Encoding
```bash
./phantom_link_demo.sh --url https://example.com
```
Shows basic URL encoding process

### Example 2: Base64 Demo
```bash
./phantom_link_demo.sh --url https://example.com --technique encoded
```
Demonstrates base64 + URL encoding

### Example 3: Visual Obfuscation
```bash
./phantom_link_demo.sh --url https://example.com --technique visual  
```
Shows limited homoglyph substitution

## 🔒 Security Note

This demo version is intentionally limited to prevent misuse while still providing educational value. It:

- ✅ Demonstrates core concepts safely
- ✅ Creates only harmless demo files
- ✅ Includes clear educational warnings
- ✅ Cannot be used for actual attacks


**Remember**: This demo is for educational purposes only. Always obtain proper authorization before conducting security assessments.


