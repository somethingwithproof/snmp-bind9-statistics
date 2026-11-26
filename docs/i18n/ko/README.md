# SNMP BIND9 Statistics

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · **한국어** · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

네트워크 모니터링 시스템과 통합할 수 있도록 SNMP를 통해 통계를 노출하는 포괄적인 Perl 기반 BIND9 DNS 서버 모니터링 솔루션입니다.

## 🚀 개요

SNMP BIND9 Statistics는 BIND9의 내장 통계와 SNMP 기반 모니터링 인프라 간의 간극을 메우는 도구입니다. `rndc stats`를 사용하여 상세한 DNS 서버 메트릭을 수집하고 SNMP를 통해 노출함으로써 Nagios, Zabbix, PRTG 등의 모니터링 플랫폼과 원활하게 통합할 수 있습니다.

## ✨ 주요 기능

- 📊 **포괄적인 통계 수집**
  - 쿼리 유형 (A, AAAA, MX, PTR, TXT 등)
  - 응답 코드 및 오류율
  - 캐시 적중률/실패율
  - 존 전송(Zone transfer) 통계
  - 리졸버 성능 메트릭

- 🔄 **지능형 폴링**
  - 폴링 간격 구성 가능
  - 시스템 부하를 줄이는 캐싱 메커니즘
  - 강제 새로 고침 기능
  - 통계 파일 순환(rotation) 자동 처리

- 🛡️ **엔터프라이즈 환경 지원**
  - SNMP v2c 지원
  - 사용자 지정 OID 매핑
  - 포괄적인 오류 처리
  - Log4perl을 사용한 상세 로깅
  - 안전한 종료를 위한 시그널 처리

- 🔧 **유연한 구성**
  - INI 기반 구성 파일
  - 환경 변수 지원
  - 명령줄 매개변수 재정의
  - 다중 BIND9 인스턴스 지원

## 📋 요구 사항

### 시스템 요구 사항

- **운영체제**: BIND9가 설치된 Linux/Unix
- **Perl**: 버전 5.10 이상
- **BIND9**: `rndc`가 구성되어 정상 작동하는 환경
- **권한**: BIND9 통계 파일에 대한 읽기 권한

### Perl 모듈

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

## 📦 설치

### GitHub에서 설치

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

### Makefile.PL 사용

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ 구성

구성 파일 `config.ini`를 생성합니다:

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

## 🚀 사용법

### 기본 사용법

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

### 다국어 지원

CLI 사용법 및 로그 진단 메시지는 `SNMP::BIND9::I18n`을 통해 외부 CPAN 의존성 없이 45개 로캘(`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`)을 지원합니다. 로캘 결정은 `--lang`, `LC_ALL`, `LC_MESSAGES`, `LANG` 순으로 따르며, 기본값은 `en`입니다. SNMP OID, 프로토콜 토큰 및 숫자 메트릭 값은 모든 로캘에서 동일하게 유지됩니다.

### 서비스로 실행

#### Systemd 서비스

`/etc/systemd/system/bind9-snmp.service` 파일을 생성합니다:

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

서비스를 활성화하고 시작합니다:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Init.d 스크립트 (레거시 시스템)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 SNMP OID 매핑

이 도구는 다음과 같은 OID 구조를 사용합니다:

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

### SNMP를 통한 쿼리

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 테스트

### 단위 테스트

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### 통합 테스트

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### 수동 테스트

```bash
# Test statistics collection
perl -I lib -MData::Dumper -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:161 1.3.6.1.4.1.99999.1
```

## 🔍 모니터링 통합

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### PRTG 사용자 지정 센서

제공된 OID와 함께 SNMP Custom Advanced 센서를 사용하세요

## 🐛 문제 해결

### 일반적인 문제

1. **통계 파일에 대한 권한 거부**

   ```bash
   # 파일 권한 확인
   ls -l /var/cache/bind/named.stats

   # 권한 수정
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **SNMP 포트가 이미 사용 중임**

   ```bash
   # 포트 161을 사용 중인 프로세스 확인
   sudo netstat -tulpn | grep 161

   # 구성에서 대체 포트 사용
   port = 1161
   ```

3. **rndc 명령어 실패**

   ```bash
   # rndc 수동 테스트
   rndc stats

   # rndc 구성 확인
   rndc-confgen -a
   ```

4. **통계가 생성되지 않음**

   ```bash
   # named.conf에서 통계 활성화
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### 디버그 모드

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 성능 고려 사항

- **폴링 간격**: 기본값 300초, 모니터링 요구 사항에 따라 조정
- **캐시 유지 시간**: 부하를 줄이기 위해 폴링 사이에 통계가 캐시됨
- **파일 I/O**: 필요한 경우에만 통계 파일을 읽음
- **메모리 사용량**: 일반적으로 20MB RSS 미만
- **CPU 사용량**: 최소 수준이며 통계 수집 중에만 일시적으로 상승

## 🤝 기여하기

기여를 환영합니다! 언제든지 Pull Request를 제출해 주세요.

1. 저장소를 포크(Fork)합니다
2. 기능 브랜치를 생성합니다 (`git checkout -b feature/amazing-feature`)
3. 변경 사항을 커밋합니다 (`git commit -m 'feat: add amazing feature'`)
4. 브랜치에 푸시합니다 (`git push origin feature/amazing-feature`)
5. Pull Request를 엽니다

### 개발 환경 설정

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 라이선스

이 프로젝트는 MIT 라이선스에 따라 배포됩니다. 자세한 내용은 [LICENSE](../../../LICENSE) 파일을 참조하세요.

## 🔒 보안

취약점 보고에 대한 자세한 내용은 [보안 정책](../../../SECURITY.md)을 참조하세요.

## 👨💻 작성자

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 감사의 말

- 뛰어난 DNS 서버를 개발한 BIND9 개발팀
- 견고한 SNMP 모듈을 제공한 Perl 커뮤니티
- 이 프로젝트의 기여자 및 사용자 여러분

## 📚 리소스

- [BIND9 문서](https://bind9.readthedocs.io/)
- [Net::SNMP 문서](https://metacpan.org/pod/Net::SNMP)
- [SNMP OID 레지스트리](http://www.oid-info.com/)
- [프로젝트 위키](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ 로드맵

- [ ] 인증을 지원하는 SNMP v3 지원
- [ ] Prometheus exporter 대안 지원
- [ ] 웹 기반 통계 대시보드
- [ ] Docker 컨테이너 지원
- [ ] 자동 설치 스크립트
- [ ] 성능 메트릭 수집
- [ ] 과거 데이터 저장
- [ ] 알림 임계값 구성

---

자세한 정보, 버그 보고 또는 기능 요청은 [GitHub 저장소](https://github.com/somethingwithproof/snmp-bind9-statistics)를 방문해 주세요.
