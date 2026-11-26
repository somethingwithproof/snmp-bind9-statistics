# Estatísticas SNMP do BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](./LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · [Español](../es/README.md) · [Français](../fr/README.md) · [Italiano](../it/README.md) · **Português (BR)** · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Uma solução completa de monitoramento em Perl para servidores DNS BIND9 que expõe estatísticas via SNMP para integração com sistemas de monitoramento de rede.

## 🚀 Visão geral

O SNMP BIND9 Statistics é uma ferramenta que faz a ponte entre as estatísticas integradas do BIND9 e a infraestrutura de monitoramento baseada em SNMP. Ele coleta métricas detalhadas do servidor DNS usando `rndc stats` e as expõe via SNMP, permitindo integração contínua com plataformas de monitoramento como Nagios, Zabbix, PRTG e outras.

## ✨ Recursos

- 📊 **Coleta abrangente de estatísticas**
  - Tipos de consulta (A, AAAA, MX, PTR, TXT, etc.)
  - Códigos de resposta e taxas de erro
  - Taxas de acerto e erro de cache (hit/miss)
  - Estatísticas de transferência de zona
  - Métricas de desempenho do resolvedor

- 🔄 **Coleta inteligente (polling)**
  - Intervalos de coleta configuráveis
  - Mecanismo de cache para reduzir a carga do sistema
  - Recurso de atualização forçada
  - Tratamento automático de rotação do arquivo de estatísticas

- 🛡️ **Pronto para ambientes corporativos**
  - Suporte a SNMP v2c
  - Mapeamento personalizado de OID
  - Tratamento abrangente de erros
  - Registro detalhado de logs com Log4perl
  - Tratamento de sinais para encerramento gracioso

- 🔧 **Configuração flexível**
  - Arquivos de configuração baseados em INI
  - Suporte a variáveis de ambiente
  - Sobrescrita por parâmetros de linha de comando
  - Suporte a múltiplas instâncias do BIND9

## 📋 Requisitos

### Requisitos do sistema

- **Sistema operacional**: Linux/Unix com BIND9
- **Perl**: Versão 5.10 ou superior
- **BIND9**: Com `rndc` configurado e operacional
- **Privilégios**: Acesso de leitura ao arquivo de estatísticas do BIND9

### Módulos Perl

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

## 📦 Instalação

### A partir do GitHub

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

### Usando Makefile.PL

```bash
perl Makefile.PL
make
make test
sudo make install
```

## ⚙️ Configuração

Crie um arquivo de configuração `config.ini`:

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

### Variáveis de ambiente

Você pode sobrescrever a configuração usando variáveis de ambiente:

```bash
export BIND9_STATS_FILE=/custom/path/named.stats
export SNMP_COMMUNITY=secret
export SNMP_PORT=1161
```

## 🚀 Uso

### Uso básico

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

### Localização

O uso da CLI e os diagnósticos de log oferecem suporte a 45 localidades (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) sem dependências externas do CPAN por meio de `SNMP::BIND9::I18n`. A resolução respeita `--lang`, depois `LC_ALL`, `LC_MESSAGES` e `LANG`, recorrendo a `en` como fallback. Os OIDs SNMP, tokens de protocolo e valores numéricos de métricas permanecem inalterados em todas as localidades.

### Executando como serviço

#### Serviço Systemd

Crie `/etc/systemd/system/bind9-snmp.service`:

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

Habilite e inicie o serviço:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Script Init.d (Sistemas legados)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Mapeamento de OIDs SNMP

A ferramenta usa a seguinte estrutura de OID:

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

### Consultando via SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Testes

### Testes unitários

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Testes de integração

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Testes manuais

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Integração com monitoramento

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Template do Zabbix

Importe o template do Zabbix fornecido em `contrib/zabbix/bind9-snmp-template.xml`

### Sensor personalizado do PRTG

Use o sensor SNMP Custom Advanced com os OIDs fornecidos

## 🐛 Solução de problemas

### Problemas comuns

1. **Permissão negada no arquivo de estatísticas**

   ```bash
   # Verificar permissões do arquivo
   ls -l /var/cache/bind/named.stats

   # Corrigir permissões
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Porta SNMP já em uso**

   ```bash
   # Verificar o que está usando a porta 161
   sudo netstat -tulpn | grep 161

   # Usar porta alternativa na configuração
   port = 1161
   ```

3. **Falha no comando rndc**

   ```bash
   # Testar o rndc manualmente
   rndc stats

   # Verificar a configuração do rndc
   rndc-confgen -a
   ```

4. **Nenhuma estatística gerada**

   ```bash
   # Habilitar estatísticas em named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Modo de depuração

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Considerações de desempenho

- **Intervalo de coleta**: Padrão de 300 segundos; ajuste conforme as necessidades de monitoramento
- **Duração do cache**: As estatísticas ficam em cache entre as coletas para reduzir a carga
- **E/S de arquivo**: O arquivo de estatísticas é lido apenas quando necessário
- **Uso de memória**: Normalmente abaixo de 20 MB de RSS
- **Uso de CPU**: Mínimo, com picos apenas durante a coleta de estatísticas

## 🤝 Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para enviar um Pull Request.

1. Faça um fork do repositório
2. Crie sua branch de recurso (`git checkout -b feature/amazing-feature`)
3. Faça o commit de suas alterações (`git commit -m 'feat: add amazing feature'`)
4. Envie para a branch (`git push origin feature/amazing-feature`)
5. Abra um Pull Request

### Configuração de desenvolvimento

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Licença

Este projeto é licenciado sob a Licença MIT - consulte o arquivo [LICENSE](../../../LICENSE) para obter detalhes.

## 🔒 Segurança

Consulte nossa [Política de Segurança](../../../SECURITY.md) para detalhes sobre como relatar vulnerabilidades.

## 👨💻 Autor

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Agradecimentos

- Equipe de desenvolvimento do BIND9 pelo excelente servidor DNS
- Comunidade Perl pelos módulos SNMP robustos
- Contribuidores e usuários deste projeto

## 📚 Recursos

- [Documentação do BIND9](https://bind9.readthedocs.io/)
- [Documentação do Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Registro de OIDs SNMP](http://www.oid-info.com/)
- [Wiki do projeto](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Roteiro

- [ ] Suporte a SNMP v3 com autenticação
- [ ] Alternativa de exportador para Prometheus
- [ ] Painel web de estatísticas
- [ ] Suporte a contêiner Docker
- [ ] Script de instalação automatizado
- [ ] Coleta de métricas de desempenho
- [ ] Armazenamento de dados históricos
- [ ] Configuração de limites de alerta

---

Para mais informações, relatos de bugs ou solicitações de recursos, visite o [repositório no GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).
