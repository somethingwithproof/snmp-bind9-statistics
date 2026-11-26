# SNMP BIND9 統計資訊

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · **繁體中文** · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

一套專為 BIND9 DNS 伺服器打造的完整 Perl 監控解決方案，透過 SNMP 匯出統計資訊，以便與網路監控系統整合。

## 🚀 概覽

SNMP BIND9 Statistics 是一款連結 BIND9 內建統計功能與 SNMP 監控基礎架構的工具。它透過 `rndc stats` 收集詳細的 DNS 伺服器指標，並經由 SNMP 對外提供，實現與 Nagios、Zabbix、PRTG 等監控平台的無縫整合。

## ✨ 功能特色

- 📊 **完整的統計資料收集**
  - 查詢類型（A、AAAA、MX、PTR、TXT 等）
  - 回應代碼與錯誤率
  - 快取命中率與未命中率
  - 區域傳輸（Zone transfer）統計資訊
  - 解析器效能指標

- 🔄 **智慧輪詢機制**
  - 可設定輪詢間隔
  - 降低系統負載的快取機制
  - 支援強制重新整理
  - 自動處理統計檔案輪替

- 🛡️ **企業級穩定性**
  - 支援 SNMP v2c
  - 自訂 OID 對應
  - 完善的錯誤處理
  - 透過 Log4perl 記錄詳細日誌
  - 支援優雅關機的訊號處理

- 🔧 **彈性設定**
  - 採用 INI 格式的設定檔
  - 支援環境變數
  - 支援命令列參數覆寫
  - 支援多個 BIND9 執行個體

## 📋 系統需求

### 環境需求

- **作業系統**：支援 BIND9 的 Linux/Unix
- **Perl**：5.10 或更新版本
- **BIND9**：已設定並可正常運作 `rndc`
- **權限**：具備 BIND9 統計檔案的讀取權限

### Perl 模組

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

## 📦 安裝

### 從 GitHub 安裝

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

### 使用 Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ 設定

建立設定檔 `config.ini`：

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

### 環境變數

您也可以使用環境變數覆寫設定：

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 使用方式

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

### 在地化

CLI 用法說明與日誌診斷支援 45 種語系（`en`、`de`、`es`、`fr`、`it`、`pt-BR`、`nl`、`ru`、`uk`、`ja`、`ko`、`zh-CN`、`zh-TW`、`ar`、`hi`、`pl`、`tr`、`sv`、`vi`、`id`、`af-ZA`、`am-ET`、`ar-EG`、`ar-MA`、`fr-MA`、`fr-SN`、`ha-NG`、`ig-NG`、`mg-MG`、`rw-RW`、`so-SO`、`sw-KE`、`xh-ZA`、`yo-NG`、`zu-ZA`、`bn`、`fa`、`he`、`mr`、`ta`、`te`、`th`、`ur`、`ms`、`fil`），透過 `SNMP::BIND9::I18n` 實作且不依賴任何外部 CPAN 套件。語系解析依序採用 `--lang`、`LC_ALL`、`LC_MESSAGES` 與 `LANG`，並於無符合項目時退回 `en`。SNMP OID、通訊協定權杖與數值指標在所有語系中皆保持不變。

### 以系統服務執行

#### Systemd 服務

建立 `/etc/systemd/system/bind9-snmp.service`：

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

啟用並啟動服務：

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d 腳本（舊版系統）

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID 對應

此工具使用以下 OID 結構：

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

### 透過 SNMP 查詢

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 測試

### 單元測試

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### 整合測試

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### 手動測試

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 監控系統整合

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix 範本

匯入隨附的 Zabbix 範本 `contrib/zabbix/bind9-snmp-template.xml`

### PRTG 自訂感測器

使用 SNMP Custom Advanced 感測器並搭配提供的 OID

## 🐛 疑難排解

### 常見問題

1. **統計檔案權限不足**

   ```bash
   # 檢查檔案權限
   ls -l /var/cache/bind/named.stats

   # 修正權限
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP 連接埠已被佔用**

   ```bash
   # 檢查佔用連接埠 161 的程序
   sudo netstat -tulpn | grep 161

   # 在設定檔中改用其他連接埠
   port = 1161
   ```

3. **rndc 指令執行失敗**

   ```bash
   # 手動測試 rndc
   rndc stats

   # 檢查 rndc 設定
   rndc-confgen -a
   ```

4. **未產生任何統計資料**

   ```bash
   # 在 named.conf 中啟用統計功能
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### 除錯模式

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 效能考量

- **輪詢間隔**：預設為 300 秒，請依監控需求調整
- **快取時間**：統計資料會在兩次輪詢之間快取以降低負載
- **檔案 I/O**：僅於必要時讀取統計檔案
- **記憶體用量**：通常低於 20MB RSS
- **CPU 用量**：極低，僅在收集統計資料時短暫上升

## 🤝 貢獻指南

歡迎任何形式的貢獻！請隨時提交 Pull Request。

1. Fork 此儲存庫
2. 建立您的功能分支（`git checkout -b feature/amazing-feature`）
3. 提交您的變更（`git commit -m 'feat: add amazing feature'`）
4. 推送至該分支（`git push origin feature/amazing-feature`）
5. 開啟 Pull Request

### 開發環境設定

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 授權條款

本專案採用 MIT 授權條款，詳情請參閱 [LICENSE](../../../LICENSE) 檔案。

## 🔒 安全性

有關回報漏洞的詳細資訊，請參閱我們的[安全性政策](../../../SECURITY.md)。

## 👨💻 作者

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 致謝

- 感謝 BIND9 開發團隊打造出卓越的 DNS 伺服器
- 感謝 Perl 社群提供強健的 SNMP 模組
- 感謝本專案的所有貢獻者與使用者

## 📚 相關資源

- [BIND9 說明文件](https://bind9.readthedocs.io/)
- [Net::SNMP 說明文件](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID 註冊表](http://www.oid-info.com/)
- [專案 Wiki](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ 未來規劃

- [ ] 支援具備驗證機制的 SNMP v3
- [ ] 提供 Prometheus 匯出器（Exporter）替代方案
- [ ] 網頁版統計資訊儀表板
- [ ] 支援 Docker 容器
- [ ] 自動化安裝腳本
- [ ] 效能指標收集
- [ ] 歷史資料儲存
- [ ] 警示閾值設定

---

如需更多資訊、回報錯誤或提出功能建議，請造訪 [GitHub 儲存庫](https://github.com/somethingwithproof/snmp-bind9-statistics)。
