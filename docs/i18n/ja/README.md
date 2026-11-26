# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · **日本語** · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

BIND9 DNS サーバー向けの包括的な Perl ベースの監視ソリューションであり、ネットワーク監視システムと統合するために統計情報を SNMP 経由で公開します。

## 🚀 概要

SNMP BIND9 Statistics は、BIND9 の組み込み統計機能と SNMP ベースの監視基盤のギャップを埋めるツールです。`rndc stats` を使用して詳細な DNS サーバーメトリクスを収集し、SNMP を通じて公開することで、Nagios、Zabbix、PRTG などの監視プラットフォームとのシームレスな統合を可能にします。

## ✨ 機能

- 📊 **包括的な統計情報の収集**
  - クエリタイプ（A、AAAA、MX、PTR、TXT など）
  - レスポンスコードおよびエラー率
  - キャッシュヒット率 / ミス率
  - ゾーン転送統計
  - リゾルバーパフォーマンスメトリクス

- 🔄 **インテリジェントなポーリング**
  - 設定可能なポーリング間隔
  - システム負荷を軽減するキャッシュ機構
  - 強制リフレッシュ機能
  - 統計ファイルのローテーションの自動処理

- 🛡️ **エンタープライズ対応**
  - SNMP v2c サポート
  - カスタム OID マッピング
  - 包括的なエラーハンドリング
  - Log4perl による詳細なログ出力
  - グレースフルシャットダウンのためのシグナルハンドリング

- 🔧 **柔軟な設定**
  - INI ベースの設定ファイル
  - 環境変数のサポート
  - コマンドラインパラメーターによる上書き
  - 複数の BIND9 インスタンスのサポート

## 📋 要件

### システム要件

- **オペレーティングシステム**: BIND9 を搭載した Linux/Unix
- **Perl**: バージョン 5.10 以上
- **BIND9**: `rndc` が設定済みで稼働していること
- **権限**: BIND9 統計ファイルへの読み取りアクセス権

### Perl モジュール

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

## 📦 インストール

### GitHub から

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

### Makefile.PL を使用する場合

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ 設定

設定ファイル `config.ini` を作成します。

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

### 環境変数

環境変数を使用して設定を上書きできます。

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 使い方

### 基本的な使い方

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

### ローカライズ

CLI の使用方法およびログ診断は、`SNMP::BIND9::I18n` 経由で外部 CPAN 依存関係なしに 45 ロケール（`en`、`de`、`es`、`fr`、`it`、`pt-BR`、`nl`、`ru`、`uk`、`ja`、`ko`、`zh-CN`、`zh-TW`、`ar`、`hi`、`pl`、`tr`、`sv`、`vi`、`id`、`af-ZA`、`am-ET`、`ar-EG`、`ar-MA`、`fr-MA`、`fr-SN`、`ha-NG`、`ig-NG`、`mg-MG`、`rw-RW`、`so-SO`、`sw-KE`、`xh-ZA`、`yo-NG`、`zu-ZA`、`bn`、`fa`、`he`、`mr`、`ta`、`te`、`th`、`ur`、`ms`、`fil`）に対応しています。ロケールの解決は `--lang`、`LC_ALL`、`LC_MESSAGES`、`LANG` の順で優先し、該当がない場合は `en` にフォールバックします。SNMP OID、プロトコルトークン、および数値メトリクス値はすべてのロケールで変更されません。

### サービスとしての実行

#### Systemd サービス

`/etc/systemd/system/bind9-snmp.service` を作成します。

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

サービスを有効化して起動します。

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d スクリプト（レガシーシステム向け）

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID マッピング

このツールは以下の OID 構造を使用します。

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

### SNMP 経由でのクエリ

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 テスト

### 単体テスト

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### 結合テスト

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### 手動テスト

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 監視システムとの統合

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Zabbix テンプレート

`contrib/zabbix/bind9-snmp-template.xml` から提供されている Zabbix テンプレートをインポートしてください。

### PRTG カスタムセンサー

提供されている OID を使用して、SNMP Custom Advanced センサーを構成してください。

## 🐛 トラブルシューティング

### よくある問題

1. **統計ファイルでの Permission Denied（権限拒否）**

   ```bash
   # ファイルのパーミッションを確認
   ls -l /var/cache/bind/named.stats

   # パーミッションを修正
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP ポートがすでに使用中**

   ```bash
   # ポート 161 を使用しているプロセスを確認
   sudo netstat -tulpn | grep 161

   # 設定で代替ポートを指定
   port = 1161
   ```

3. **rndc コマンドの失敗**

   ```bash
   # rndc を手動でテスト
   rndc stats

   # rndc の設定を確認
   rndc-confgen -a
   ```

4. **統計情報が生成されない**

   ```bash
   # named.conf で統計を有効化
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### デバッグモード

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 パフォーマンスに関する考慮事項

- **ポーリング間隔**: デフォルトは 300 秒です。監視要件に応じて調整してください。
- **キャッシュ期間**: 負荷を軽減するため、ポーリング間で統計情報がキャッシュされます。
- **ファイル I/O**: 統計ファイルは必要な場合にのみ読み込まれます。
- **メモリ使用量**: 通常 20MB RSS 未満です。
- **CPU 使用率**: 最小限であり、統計収集時にのみ一時的に上昇します。

## 🤝 コントリビューション

コントリビューションを歓迎します。お気軽に Pull Request を送信してください。

1. リポジトリをフォークする
2. フィーチャーブランチを作成する（`git checkout -b feature/amazing-feature`）
3. 変更をコミットする（`git commit -m 'feat: add amazing feature'`）
4. ブランチをプッシュする（`git push origin feature/amazing-feature`）
5. Pull Request を作成する

### 開発セットアップ

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 ライセンス

このプロジェクトは MIT ライセンスの下で公開されています。詳細は [LICENSE](../../../LICENSE) ファイルを参照してください。

## 🔒 セキュリティ

脆弱性の報告に関する詳細は、[セキュリティポリシー](../../../SECURITY.md)を参照してください。

## 👨💻 作者

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 謝辞

- 優れた DNS サーバーを提供している BIND9 開発チーム
- 堅牢な SNMP モジュールを提供する Perl コミュニティ
- このプロジェクトのコントリビューターおよびユーザーの皆様

## 📚 リソース

- [BIND9 ドキュメント](https://bind9.readthedocs.io/)
- [Net::SNMP ドキュメント](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID レジストリ](http://www.oid-info.com/)
- [プロジェクト Wiki](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ ロードマップ

- [ ] 認証付き SNMP v3 のサポート
- [ ] Prometheus エクスポーターの代替実装
- [ ] Web ベースの統計ダッシュボード
- [ ] Docker コンテナのサポート
- [ ] 自動インストーラースクリプト
- [ ] パフォーマンスメトリクス収集機能
- [ ] 履歴データの保存機能
- [ ] アラートしきい値設定機能

---

詳細情報、バグ報告、または機能要望については、[GitHub リポジトリ](https://github.com/somethingwithproof/snmp-bind9-statistics)をご覧ください。
