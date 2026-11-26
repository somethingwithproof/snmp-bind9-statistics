# SPDX-FileCopyrightText: 2026 Thomas Vincent <thomasvincent@gmail.com>
# SPDX-License-Identifier: MIT

package SNMP::BIND9::I18n::he;

use strict;
use warnings;
use utf8;
use 5.010;

our $VERSION = '1.0.0';

my %MESSAGES = (
    'cli.description' => 'אוסף נתונים סטטיסטיים משרת DNS מסוג BIND9 באמצעות \'rndc stats\' וחושף אותם דרך SNMP.',
    'cli.opt_config' => '  --config=FILE    נתיב לקובץ התצורה',
    'cli.opt_help' => '  --help           הודעת עזרה קצרה',
    'cli.opt_lang' => '  --lang=LOCALE    קוד שפה להודעות CLI (עוקף את LC_ALL/LC_MESSAGES/LANG)',
    'cli.opt_man' => '  --man            תיעוד מלא',
    'cli.opt_version' => '  --version        הצגת גרסה',
    'cli.options_header' => 'אפשרויות:',
    'cli.usage_header' => 'שימוש: snmp_bind9_stats.pl [options]',
    'cli.version_line' => 'snmp_bind9_stats.pl גרסה {version}',
    'log.agent_init_failed' => 'אתחול סוכן ה-SNMP נכשל',
    'log.agent_init_failed_detail' => 'אתחול סוכן ה-SNMP נכשל: {error}',
    'log.agent_starting' => 'מפעיל את סוכן הסטטיסטיקות של SNMP BIND9 גרסה v{version}',
    'log.agent_stopped' => 'סוכן הסטטיסטיקות של SNMP BIND9 נעצר',
    'log.config_not_found' => 'קובץ התצורה לא נמצא: {file}',
    'log.config_parse_failed' => 'פענוח קובץ התצורה נכשל: {errors}',
    'log.invalid_stats_object' => 'סופק אובייקט סטטיסטיקות לא תקין',
    'log.oid_mappings_initialized' => 'אותחלו {count} מיפויי OID',
    'log.parsed_stats' => 'פוענחו {count} נתונים סטטיסטיים',
    'log.rndc_failed' => 'הרצת הפקודה rndc stats נכשלה',
    'log.signal_shutdown' => 'התקבל אות {signal}, מבצע כיבוי מסודר...',
    'log.snmp_run_error' => 'שגיאה בהרצת סוכן ה-SNMP: {error}',
    'log.snmp_session_failed' => 'יצירת הפעלת SNMP נכשלה: {error}',
    'log.snmp_started' => 'סוכן ה-SNMP הופעל בהצלחה',
    'log.snmp_starting' => 'מפעיל את סוכן ה-SNMP בכתובת {addr}:{port}',
    'log.snmp_stopped' => 'סוכן ה-SNMP נעצר',
    'log.stats_collect_error' => 'שגיאה באיסוף הנתונים הסטטיסטיים: {error}',
    'log.stats_file_not_found' => 'קובץ הסטטיסטיקות לא נמצא: {file}',
    'log.stats_init_failed' => 'אתחול אוסף הסטטיסטיקות נכשל',
    'log.stats_init_failed_detail' => 'אתחול אוסף הסטטיסטיקות נכשל: {error}',
    'log.stats_read_failed' => 'קריאת קובץ הסטטיסטיקות נכשלה: {error}',
    'log.stats_updated' => 'הסטטיסטיקות עודכנו',
);

sub messages {
    return \%MESSAGES;
}

1;
