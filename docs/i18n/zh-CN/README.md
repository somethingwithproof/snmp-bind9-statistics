# SNMP BIND9 统计信息

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · **简体中文** · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

一个基于 Perl 的全面 BIND9 DNS 服务器监控方案，通过 SNMP 暴露统计信息，以便集成到各类网络监控系统中。

## 🚀 概述

SNMP BIND9 统计工具用于打通 BIND9 内置统计信息与基于 SNMP 的监控基础设施。它通过 `rndc stats` 收集详细的 DNS 服务器指标，并通过 SNMP 对外暴露，从而无缝集成至 Nagios、Zabbix、PRTG 等监控平台。

## ✨ 功能特性

- 📊 **全面的统计信息采集**
  - 查询类型（A、AAAA、MX、PTR、TXT 等）
  - 响应码与错误率
  - 缓存命中率与未命中率
  - 区域传输统计信息
  - 解析器性能指标

- 🔄 **智能轮询**
  - 可配置的轮询间隔
  - 内置缓存机制以降低系统负载
  - 支持强制刷新
  - 自动处理统计信息文件轮转

- 🛡️ **企业级就绪**
  - 支持 SNMP v2c
  - 支持自定义 OID 映射
  - 完善的错误处理
  - 基于 Log4perl 的详细日志记录
  - 支持信号处理以实现优雅关闭

- 🔧 **灵活配置**
  - 基于 INI 格式的配置文件
  - 支持环境变量
  - 支持命令行参数覆盖
  - 支持多 BIND9 实例

## 📋 系统要求

### 环境要求

- **操作系统**：运行 BIND9 的 Linux/Unix 系统
- **Perl**：5.10 或更高版本
- **BIND9**：已配置并正常运行的 `rndc`
- **权限**：具备 BIND9 统计信息文件的读取权限

### Perl 模块

```bash
# Required modules
Config::IniFiles
Net::SNMP
File::Slurp
Log::Log4perl
FindBin
Time::HiRes
Scalar::Util
POSIX

# Test modules (for development)
Test::More
Test::Warn
File::Temp
```

## 📦 安装

### 从 GitHub 安装

```bash
# Clone the repository
git clone https://github.com/somethingwithproof/snmp-bind9-statistics.git
cd snmp-bind9-statistics

# Install Perl dependencies using CPAN
cpan Config::IniFiles Net::SNMP File::Slurp Log::Log4perl

# Or using cpanm (recommended)
cpanm Config::IniFiles Net::SNMP File::Slurp Log::Log4perl

# Make the script executable
chmod +x bin/snmp_bind9_stats.pl
```

### 使用 Makefile.PL 安装

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ 配置

创建配置文件 `config.ini`：

```ini
[general]
# Path to BIND9 statistics file
stats_file = /var/cache/bind/named.stats

# Command to generate statistics
rndc_command = rndc stats

# Logging level (DEBUG, INFO, WARN, ERROR)
log_level = INFO

# Statistics polling interval in seconds
poll_interval = 300

[snmp]
# SNMP community string
community = public

# SNMP listening port
port = 161

# Agent bind address (0.0.0.0 for all interfaces)
agent_addr = 0.0.0.0
```

### 环境变量

可以使用环境变量覆盖配置：

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 用法

### 基本用法

```bash
# Run with default configuration
./bin/snmp_bind9_stats.pl

# Specify custom configuration file
./bin/snmp_bind9_stats.pl --config=/etc/bind9-snmp/config.ini

# Display help
./bin/snmp_bind9_stats.pl --help

# Show version
./bin/snmp_bind9_stats.pl --version

# Display localized CLI help (supports 45 locales via --lang or LC_ALL/LC_MESSAGES/LANG)
./bin/snmp_bind9_stats.pl --lang=de --help
```

### 本地化

CLI 用法说明和日志诊断信息通过 `SNMP::BIND9::I18n` 支持 45 种语言区域（`en`、`de`、`es`、`fr`、`it`、`pt-BR`、`nl`、`ru`、`uk`、`ja`、`ko`、`zh-CN`、`zh-TW`、`ar`、`hi`、`pl`、`tr`、`sv`、`vi`、`id`、`af-ZA`、`am-ET`、`ar-EG`、`ar-MA`、`fr-MA`、`fr-SN`、`ha-NG`、`ig-NG`、`mg-MG`、`rw-RW`、`so-SO`、`sw-KE`、`xh-ZA`、`yo-NG`、`zu-ZA`、`bn`、`fa`、`he`、`mr`、`ta`、`te`、`th`、`ur`、`ms`、`fil`），无需任何外部 CPAN 依赖。语言解析顺序依次遵循 `--lang`、`LC_ALL`、`LC_MESSAGES` 和 `LANG`，最终回退至 `en`。在所有语言区域中，SNMP OID、协议标识和数值型指标均保持不变。

### 作为服务运行

#### Systemd 服务

创建 `/etc/systemd/system/bind9-snmp.service`：

```ini
[Unit]
Description=SNMP BIND9 Statistics Agent
After=network.target named.service

[Service]
Type=simple
User=bind
ExecStart=/usr/local/bin/snmp_bind9_stats.pl --config=/etc/bind9-snmp/config.ini
Restart=on-failure
RestartSec=10

[Install]
WantedBy=multi-user.target
```

启用并启动服务：

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d 脚本（传统系统）

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID 映射

本工具使用以下 OID 结构：

```text
Base OID: 1.3.6.1.4.1.99999.1

Query Statistics (1.3.6.1.4.1.99999.1.1.*)
├── .1 = incoming_queries_A
├── .2 = incoming_queries_AAAA
├── .3 = incoming_queries_NS
├── .4 = incoming_queries_MX
├── .5 = incoming_queries_PTR
├── .6 = incoming_queries_TXT
├── .7 = incoming_queries_SOA
└── .8 = incoming_queries_CNAME

Name Server Statistics (1.3.6.1.4.1.99999.1.2.*)
├── .1 = queries_resulted_in_successful_answer
├── .2 = queries_resulted_in_authoritative_answer
├── .3 = queries_resulted_in_non_authoritative_answer
├── .4 = queries_resulted_in_nxrrset
├── .5 = queries_resulted_in_SERVFAIL
├── .6 = queries_resulted_in_NXDOMAIN
├── .7 = queries_caused_recursion
└── .8 = duplicate_queries_received

Resolver Statistics (1.3.6.1.4.1.99999.1.3.*)
├── .1 = IPv4_queries_sent
├── .2 = IPv6_queries_sent
├── .3 = query_timeouts
├── .4 = query_errors
└── .5 = EDNS0_query_failures
```

### 通过 SNMP 查询

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 测试

### 单元测试

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### 集成测试

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### 手动测试

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 监控平台集成

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix 模板

从 `contrib/zabbix/bind9-snmp-template.xml` 导入随附的 Zabbix 模板

### PRTG 自定义传感器

结合所提供的 OID 使用 SNMP Custom Advanced 传感器

## 🐛 故障排查

### 常见问题

1. **统计文件权限被拒绝**

   ```bash
   # 检查文件权限
   ls -l /var/cache/bind/named.stats

   # 修复权限
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP 端口已被占用**

   ```bash
   # 检查 161 端口占用情况
   sudo netstat -tulpn | grep 161

   # 在配置中使用备用端口
   port = 1161
   ```

3. **rndc 命令执行失败**

   ```bash
   # 手动测试 rndc
   rndc stats

   # 检查 rndc 配置
   rndc-confgen -a
   ```

4. **未生成统计信息**

   ```bash
   # 在 named.conf 中启用统计信息
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### 调试模式

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 性能说明

- **轮询间隔**：默认 300 秒，请根据监控需求调整
- **缓存时长**：在两次轮询之间缓存统计信息以降低负载
- **文件 I/O**：仅在需要时读取统计文件
- **内存占用**：常驻内存（RSS）通常低于 20MB
- **CPU 占用**：极低，仅在采集统计信息时出现短暂上升

## 🤝 贡献

欢迎任何形式的贡献！请随时提交 Pull Request。

1. Fork 本仓库
2. 创建您的特性分支（`git checkout -b feature/amazing-feature`）
3. 提交您的更改（`git commit -m 'feat: add amazing feature'`）
4. 推送到该分支（`git push origin feature/amazing-feature`）
5. 发起 Pull Request

### 开发环境配置

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 许可证

本项目基于 MIT 许可证开源，详见 [LICENSE](../../../LICENSE) 文件。

## 🔒 安全

关于报告漏洞的详情，请参阅我们的[安全策略](../../../SECURITY.md)。

## 👨💻 作者

**Thomas Vincent**

- GitHub：[@thomasvincent](https://github.com/thomasvincent)

## 🙏 致谢

- BIND9 开发团队打造了出色的 DNS 服务器
- Perl 社区提供了稳健的 SNMP 模块
- 本项目的所有贡献者与用户

## 📚 参考资源

- [BIND9 文档](https://bind9.readthedocs.io/)
- [Net::SNMP 文档](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID 注册表](http://www.oid-info.com/)
- [项目 Wiki](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ 路线图

- [ ] 支持带认证的 SNMP v3
- [ ] 提供 Prometheus exporter 替代方案
- [ ] 基于 Web 的统计信息仪表盘
- [ ] Docker 容器支持
- [ ] 自动化安装脚本
- [ ] 性能指标采集
- [ ] 历史数据存储
- [ ] 告警阈值配置

---

如需了解更多信息、报告错误或提交功能请求，请访问 [GitHub 仓库](https://github.com/somethingwithproof/snmp-bind9-statistics)。
