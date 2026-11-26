# Estadísticas SNMP de BIND9

[![CI](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/somethingwithproof/snmp-bind9-statistics/actions/workflows/ci.yml)
[![Release](https://img.shields.io/github/v/release/somethingwithproof/snmp-bind9-statistics)](https://github.com/somethingwithproof/snmp-bind9-statistics/releases)
[![License](https://img.shields.io/badge/license-MIT-blue)](../../../LICENSE)
[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/somethingwithproof/snmp-bind9-statistics/badge)](https://scorecard.dev/viewer/?uri=github.com/somethingwithproof/snmp-bind9-statistics)

**Languages:** [English](../../../README.md) · [Deutsch](../de/README.md) · **Español** · [Français](../fr/README.md) · [Italiano](../it/README.md) · [Português (BR)](../pt-BR/README.md) · [Nederlands](../nl/README.md) · [Русский](../ru/README.md) · [Українська](../uk/README.md) · [日本語](../ja/README.md) · [한국어](../ko/README.md) · [简体中文](../zh-CN/README.md) · [繁體中文](../zh-TW/README.md) · [العربية](../ar/README.md) · [हिन्दी](../hi/README.md) · [Polski](../pl/README.md) · [Türkçe](../tr/README.md) · [Svenska](../sv/README.md) · [Tiếng Việt](../vi/README.md) · [Bahasa Indonesia](../id/README.md)

<details><summary>More languages (25 African &amp; Asian locales)</summary>

[Afrikaans](../af-ZA/README.md) · [አማርኛ](../am-ET/README.md) · [العربية (مصر)](../ar-EG/README.md) · [العربية (المغرب)](../ar-MA/README.md) · [বাংলা](../bn/README.md) · [فارسی](../fa/README.md) · [Filipino](../fil/README.md) · [Français (Maroc)](../fr-MA/README.md) · [Français (Sénégal)](../fr-SN/README.md) · [Hausa](../ha-NG/README.md) · [עברית](../he/README.md) · [Igbo](../ig-NG/README.md) · [Malagasy](../mg-MG/README.md) · [मराठी](../mr/README.md) · [Bahasa Melayu](../ms/README.md) · [Kinyarwanda](../rw-RW/README.md) · [Soomaali](../so-SO/README.md) · [Kiswahili](../sw-KE/README.md) · [தமிழ்](../ta/README.md) · [తెలుగు](../te/README.md) · [ไทย](../th/README.md) · [اردو](../ur/README.md) · [isiXhosa](../xh-ZA/README.md) · [Yorùbá](../yo-NG/README.md) · [isiZulu](../zu-ZA/README.md)

</details>

Una solución integral de monitoreo basada en Perl para servidores DNS BIND9 que expone estadísticas mediante SNMP para integrarse con sistemas de monitoreo de red.

## 🚀 Descripción general

SNMP BIND9 Statistics es una herramienta que conecta las estadísticas integradas de BIND9 con infraestructuras de monitoreo basadas en SNMP. Recopila métricas detalladas del servidor DNS mediante `rndc stats` y las expone a través de SNMP, lo que permite una integración fluida con plataformas de monitoreo como Nagios, Zabbix, PRTG y otras.

## ✨ Características

- 📊 **Recopilación integral de estadísticas**
  - Tipos de consulta (A, AAAA, MX, PTR, TXT, etc.)
  - Códigos de respuesta y tasas de error
  - Proporciones de aciertos y fallos de caché
  - Estadísticas de transferencia de zona
  - Métricas de rendimiento del resolutor

- 🔄 **Sondeo inteligente**
  - Intervalos de sondeo configurables
  - Mecanismo de caché para reducir la carga del sistema
  - Capacidad de actualización forzada
  - Gestión automática de rotación del archivo de estadísticas

- 🛡️ **Listo para entornos empresariales**
  - Soporte para SNMP v2c
  - Mapeo personalizado de OID
  - Manejo integral de errores
  - Registro detallado con Log4perl
  - Manejo de señales para apagado ordenado

- 🔧 **Configuración flexible**
  - Archivos de configuración basados en INI
  - Soporte para variables de entorno
  - Anulación mediante parámetros de línea de comandos
  - Soporte para múltiples instancias de BIND9

## 📋 Requisitos

### Requisitos del sistema

- **Sistema operativo**: Linux/Unix con BIND9
- **Perl**: Versión 5.10 o superior
- **BIND9**: Con `rndc` configurado y operativo
- **Privilegios**: Acceso de lectura al archivo de estadísticas de BIND9

### Módulos de Perl

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

## 📦 Instalación

### Desde GitHub

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

## ⚙️ Configuración

Crea un archivo de configuración `config.ini`:

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

### Variables de entorno

Puedes anular la configuración utilizando variables de entorno:

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

### Localización

El uso por línea de comandos y los diagnósticos de registro admiten 45 configuraciones regionales (`en`, `de`, `es`, `fr`, `it`, `pt-BR`, `nl`, `ru`, `uk`, `ja`, `ko`, `zh-CN`, `zh-TW`, `ar`, `hi`, `pl`, `tr`, `sv`, `vi`, `id`, `af-ZA`, `am-ET`, `ar-EG`, `ar-MA`, `fr-MA`, `fr-SN`, `ha-NG`, `ig-NG`, `mg-MG`, `rw-RW`, `so-SO`, `sw-KE`, `xh-ZA`, `yo-NG`, `zu-ZA`, `bn`, `fa`, `he`, `mr`, `ta`, `te`, `th`, `ur`, `ms`, `fil`) sin dependencias externas de CPAN mediante `SNMP::BIND9::I18n`. La resolución respeta `--lang`, luego `LC_ALL`, `LC_MESSAGES` y `LANG`, con respaldo en `en`. Los OID de SNMP, los tokens de protocolo y los valores numéricos de las métricas permanecen sin cambios en todas las configuraciones regionales.

### Ejecución como servicio

#### Servicio systemd

Crea `/etc/systemd/system/bind9-snmp.service`:

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

Habilita e inicia el servicio:

```bash
sudo systemctl daemon-reload
sudo systemctl enable bind9-snmp
sudo systemctl start bind9-snmp
```

#### Script init.d (sistemas heredados)

```bash
sudo cp contrib/init.d/bind9-snmp /etc/init.d/
sudo chmod +x /etc/init.d/bind9-snmp
sudo update-rc.d bind9-snmp defaults
sudo service bind9-snmp start
```

## 📊 Mapeo de OID de SNMP

La herramienta utiliza la siguiente estructura de OID:

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

### Consultas mediante SNMP

```bash
# Get all statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1

# Get specific statistic
snmpget -v2c -c public localhost 1.3.6.1.4.1.99999.1.1.1

# Get query type statistics
snmpwalk -v2c -c public localhost 1.3.6.1.4.1.99999.1.1
```

## 🧪 Pruebas

### Pruebas unitarias

```bash
# Run all unit tests
prove -r t/unit

# Run specific test file
prove t/unit/01_statistics.t

# Run with verbose output
prove -v t/unit/*.t
```

### Pruebas de integración

```bash
# Requires running BIND9 instance
prove -r t/integration

# Test SNMP functionality
perl t/integration/02_snmp.t
```

### Pruebas manuales

```bash
# Test statistics collection
perl -I lib -e 'use SNMP::BIND9::Statistics; my $s = SNMP::BIND9::Statistics->new(); print Dumper($s->get_all_stats());'

# Test SNMP agent
snmpwalk -v2c -c public localhost:1161 1.3.6.1.4.1.99999.1
```

## 🔍 Integración de monitoreo

### Nagios/Icinga

```bash
# Check plugin example
check_snmp -H localhost -C public -o 1.3.6.1.4.1.99999.1.2.5 -w 100 -c 200
```

### Plantilla de Zabbix

Importa la plantilla de Zabbix proporcionada desde `contrib/zabbix/bind9-snmp-template.xml`

### Sensor personalizado de PRTG

Usa el sensor SNMP Custom Advanced con los OID proporcionados

## 🐛 Solución de problemas

### Problemas comunes

1. **Permiso denegado en el archivo de estadísticas**

   ```bash
   # Comprobar permisos del archivo
   ls -l /var/cache/bind/named.stats

   # Corregir permisos
   sudo chown bind:bind /var/cache/bind/named.stats
   ```

2. **Puerto SNMP ya en uso**

   ```bash
   # Comprobar qué está usando el puerto 161
   sudo netstat -tulpn | grep 161

   # Usar un puerto alternativo en la configuración
   port = 1161
   ```

3. **Falla el comando rndc**

   ```bash
   # Probar rndc manualmente
   rndc stats

   # Comprobar la configuración de rndc
   rndc-confgen -a
   ```

4. **No se generan estadísticas**

   ```bash
   # Habilitar estadísticas en named.conf
   statistics-channels {
       inet 127.0.0.1 port 8053 allow { 127.0.0.1; };
   };
   ```

### Modo de depuración

```bash
# Run with debug logging
perl bin/snmp_bind9_stats.pl --config=config.ini 2>&1 | tee debug.log

# Check log output
tail -f /var/log/bind9-snmp.log
```

## 📈 Consideraciones de rendimiento

- **Intervalo de sondeo**: Predeterminado de 300 segundos; ajústalo según las necesidades de monitoreo
- **Duración de caché**: Las estadísticas se almacenan en caché entre sondeos para reducir la carga
- **E/S de archivos**: El archivo de estadísticas se lee solo cuando es necesario
- **Uso de memoria**: Normalmente por debajo de 20 MB de RSS
- **Uso de CPU**: Mínimo, con picos solo durante la recopilación de estadísticas

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! No dudes en enviar un Pull Request.

1. Haz un fork del repositorio
2. Crea tu rama de funcionalidades (`git checkout -b feature/amazing-feature`)
3. Confirma tus cambios (`git commit -m 'feat: add amazing feature'`)
4. Sube la rama (`git push origin feature/amazing-feature`)
5. Abre un Pull Request

### Configuración de desarrollo

```bash
# Install development dependencies
cpanm Test::More Test::Warn Test::Pod Test::Pod::Coverage

# Run full test suite
make test

# Check code coverage
cover -test
```

## 📄 Licencia

Este proyecto está bajo la Licencia MIT; consulta el archivo [LICENSE](../../../LICENSE) para más detalles.

## 🔒 Seguridad

Consulta nuestra [Política de seguridad](../../../SECURITY.md) para obtener información sobre cómo informar vulnerabilidades.

## 👨💻 Autor

**Thomas Vincent**

- GitHub: [@thomasvincent](https://github.com/thomasvincent)

## 🙏 Agradecimientos

- Al equipo de desarrollo de BIND9 por el excelente servidor DNS
- A la comunidad de Perl por los robustos módulos SNMP
- A los colaboradores y usuarios de este proyecto

## 📚 Recursos

- [Documentación de BIND9](https://bind9.readthedocs.io/)
- [Documentación de Net::SNMP](https://metacpan.org/pod/Net::SNMP)
- [Registro de OID de SNMP](http://www.oid-info.com/)
- [Wiki del proyecto](https://github.com/somethingwithproof/snmp-bind9-statistics/wiki)

## 🗺️ Hoja de ruta

- [ ] Soporte para SNMP v3 con autenticación
- [ ] Alternativa de exportador para Prometheus
- [ ] Panel web de estadísticas
- [ ] Soporte para contenedores Docker
- [ ] Script instalador automatizado
- [ ] Recopilación de métricas de rendimiento
- [ ] Almacenamiento de datos históricos
- [ ] Configuración de umbrales de alerta

---

Para más información, informes de errores o solicitudes de funcionalidades, visita el [repositorio de GitHub](https://github.com/somethingwithproof/snmp-bind9-statistics).
