# ДОМАШНЕЕ ЗАДАНИЕ
## РИ-411001
Паньков Дмитрий Васильевич,
Шувалов Андрей Дмитриевич.

# Python 3.7

### Bandit

```bandit
[main]	INFO	profile include tests: None
[main]	INFO	profile exclude tests: None
[main]	INFO	cli include tests: None
[main]	INFO	cli exclude tests: None
[main]	INFO	running on Python 3.7.17
Run started:2024-10-03 18:48:20.277140

Test results:
	No issues identified.

Code scanned:
	Total lines of code: 31
	Total lines skipped (#nosec): 0
	Total potential issues skipped due to specifically being disabled (e.g., #nosec BXXX): 0

Run metrics:
	Total issues (by severity):
		Undefined: 0
		Low: 0
		Medium: 0
		High: 0
	Total issues (by confidence):
		Undefined: 0
		Low: 0
		Medium: 0
		High: 0
Files skipped (0):
```

### Semgrep

```semgrep
METRICS: Using configs from the Registry (like --config=p/ci) reports pseudonymous rule metrics to semgrep.dev.
To disable Registry rule metrics, use "--metrics=off".
Using configs only from local files (like --config=xyz.yml) does not enable metrics.

More information: https://semgrep.dev/docs/metrics

               
               
┌─────────────┐
│ Scan Status │
└─────────────┘
  Scanning 282 files tracked by git with 4 Code rules:
  Scanning 1 file with 4 python rules.
                
                
┌──────────────┐
│ Scan Summary │
└──────────────┘

Ran 4 rules on 1 file: 0 findings.

A new version of Semgrep is available. See https://semgrep.dev/docs/upgrading
If Semgrep missed a finding, please send us feedback to let us know!
See https://semgrep.dev/docs/reporting-false-negatives/
```

### Trivy

```trivy
For OSS Maintainers: VEX Notice
--------------------------------
If you're an OSS maintainer and Trivy has detected vulnerabilities in your project that you believe are not actually exploitable, consider issuing a VEX (Vulnerability Exploitability eXchange) statement.
VEX allows you to communicate the actual status of vulnerabilities in your project, improving security transparency and reducing false positives for your users.
Learn more and start using VEX: https://aquasecurity.github.io/trivy/v0.56/docs/supply-chain/vex/repo#publishing-vex-documents

To disable this notice, set the TRIVY_DISABLE_VEX_NOTICE environment variable.


api_calc:latest (debian 12.1)
=============================
Total: 48 (HIGH: 40, CRITICAL: 8)

┌──────────────────┬────────────────┬──────────┬──────────────┬───────────────────┬──────────────────┬──────────────────────────────────────────────────────────────┐
│     Library      │ Vulnerability  │ Severity │    Status    │ Installed Version │  Fixed Version   │                            Title                             │
├──────────────────┼────────────────┼──────────┼──────────────┼───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ bsdutils         │ CVE-2024-28085 │ HIGH     │ fixed        │ 1:2.38.1-5+b1     │ 2.38.1-5+deb12u1 │ util-linux: CVE-2024-28085: wall: escape sequence injection  │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-28085                   │
├──────────────────┤                │          │              ├───────────────────┤                  │                                                              │
│ libblkid1        │                │          │              │ 2.38.1-5+b1       │                  │                                                              │
│                  │                │          │              │                   │                  │                                                              │
├──────────────────┼────────────────┤          │              ├───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libc-bin         │ CVE-2023-4911  │          │              │ 2.36-9+deb12u1    │ 2.36-9+deb12u3   │ glibc: buffer overflow in ld.so leading to privilege         │
│                  │                │          │              │                   │                  │ escalation                                                   │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-4911                    │
│                  ├────────────────┤          │              │                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2023-6246  │          │              │                   │ 2.36-9+deb12u4   │ glibc: heap-based buffer overflow in __vsyslog_internal()    │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-6246                    │
│                  ├────────────────┤          │              │                   │                  ├──────────────────────────────────────────────────────────────┤
│                  │ CVE-2023-6779  │          │              │                   │                  │ glibc: off-by-one heap-based buffer overflow in              │
│                  │                │          │              │                   │                  │ __vsyslog_internal()                                         │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-6779                    │
│                  ├────────────────┤          │              │                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-2961  │          │              │                   │ 2.36-9+deb12u6   │ glibc: Out of bounds write in iconv may lead to remote       │
│                  │                │          │              │                   │                  │ code...                                                      │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-2961                    │
│                  ├────────────────┤          │              │                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-33599 │          │              │                   │ 2.36-9+deb12u7   │ glibc: stack-based buffer overflow in netgroup cache         │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-33599                   │
├──────────────────┼────────────────┤          │              │                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│ libc6            │ CVE-2023-4911  │          │              │                   │ 2.36-9+deb12u3   │ glibc: buffer overflow in ld.so leading to privilege         │
│                  │                │          │              │                   │                  │ escalation                                                   │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-4911                    │
│                  ├────────────────┤          │              │                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2023-6246  │          │              │                   │ 2.36-9+deb12u4   │ glibc: heap-based buffer overflow in __vsyslog_internal()    │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-6246                    │
│                  ├────────────────┤          │              │                   │                  ├──────────────────────────────────────────────────────────────┤
│                  │ CVE-2023-6779  │          │              │                   │                  │ glibc: off-by-one heap-based buffer overflow in              │
│                  │                │          │              │                   │                  │ __vsyslog_internal()                                         │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-6779                    │
│                  ├────────────────┤          │              │                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-2961  │          │              │                   │ 2.36-9+deb12u6   │ glibc: Out of bounds write in iconv may lead to remote       │
│                  │                │          │              │                   │                  │ code...                                                      │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-2961                    │
│                  ├────────────────┤          │              │                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-33599 │          │              │                   │ 2.36-9+deb12u7   │ glibc: stack-based buffer overflow in netgroup cache         │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-33599                   │
├──────────────────┼────────────────┼──────────┤              ├───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libexpat1        │ CVE-2024-45490 │ CRITICAL │              │ 2.5.0-1           │ 2.5.0-1+deb12u1  │ libexpat: Negative Length Parsing Vulnerability in libexpat  │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-45490                   │
│                  ├────────────────┤          │              │                   │                  ├──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-45491 │          │              │                   │                  │ libexpat: Integer Overflow or Wraparound                     │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-45491                   │
│                  ├────────────────┤          │              │                   │                  ├──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-45492 │          │              │                   │                  │ libexpat: integer overflow                                   │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-45492                   │
│                  ├────────────────┼──────────┼──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2023-52425 │ HIGH     │ affected     │                   │                  │ expat: parsing large tokens can trigger a denial of service  │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-52425                   │
├──────────────────┼────────────────┤          ├──────────────┼───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libgnutls30      │ CVE-2024-0553  │          │ fixed        │ 3.7.9-2           │ 3.7.9-2+deb12u2  │ gnutls: incomplete fix for CVE-2023-5981                     │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-0553                    │
│                  ├────────────────┤          │              │                   │                  ├──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-0567  │          │              │                   │                  │ gnutls: rejects certificate chain with distributed trust     │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-0567                    │
├──────────────────┼────────────────┼──────────┤              ├───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libgssapi-krb5-2 │ CVE-2024-37371 │ CRITICAL │              │ 1.20.1-2          │ 1.20.1-2+deb12u2 │ krb5: GSS message token handling                             │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-37371                   │
│                  ├────────────────┼──────────┼──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-26462 │ HIGH     │ affected     │                   │                  │ krb5: Memory leak at /krb5/src/kdc/ndr.c                     │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-26462                   │
│                  ├────────────────┤          ├──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-37370 │          │ fixed        │                   │ 1.20.1-2+deb12u2 │ krb5: GSS message token handling                             │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-37370                   │
├──────────────────┼────────────────┼──────────┤              │                   │                  ├──────────────────────────────────────────────────────────────┤
│ libk5crypto3     │ CVE-2024-37371 │ CRITICAL │              │                   │                  │ krb5: GSS message token handling                             │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-37371                   │
│                  ├────────────────┼──────────┼──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-26462 │ HIGH     │ affected     │                   │                  │ krb5: Memory leak at /krb5/src/kdc/ndr.c                     │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-26462                   │
│                  ├────────────────┤          ├──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-37370 │          │ fixed        │                   │ 1.20.1-2+deb12u2 │ krb5: GSS message token handling                             │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-37370                   │
├──────────────────┼────────────────┼──────────┤              │                   │                  ├──────────────────────────────────────────────────────────────┤
│ libkrb5-3        │ CVE-2024-37371 │ CRITICAL │              │                   │                  │ krb5: GSS message token handling                             │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-37371                   │
│                  ├────────────────┼──────────┼──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-26462 │ HIGH     │ affected     │                   │                  │ krb5: Memory leak at /krb5/src/kdc/ndr.c                     │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-26462                   │
│                  ├────────────────┤          ├──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-37370 │          │ fixed        │                   │ 1.20.1-2+deb12u2 │ krb5: GSS message token handling                             │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-37370                   │
├──────────────────┼────────────────┼──────────┤              │                   │                  ├──────────────────────────────────────────────────────────────┤
│ libkrb5support0  │ CVE-2024-37371 │ CRITICAL │              │                   │                  │ krb5: GSS message token handling                             │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-37371                   │
│                  ├────────────────┼──────────┼──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-26462 │ HIGH     │ affected     │                   │                  │ krb5: Memory leak at /krb5/src/kdc/ndr.c                     │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-26462                   │
│                  ├────────────────┤          ├──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2024-37370 │          │ fixed        │                   │ 1.20.1-2+deb12u2 │ krb5: GSS message token handling                             │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-37370                   │
├──────────────────┼────────────────┤          ├──────────────┼───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libldap-2.5-0    │ CVE-2023-2953  │          │ affected     │ 2.5.13+dfsg-5     │                  │ openldap: null pointer dereference in ber_memalloc_x         │
│                  │                │          │              │                   │                  │ function                                                     │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-2953                    │
├──────────────────┤                │          │              │                   ├──────────────────┤                                                              │
│ libldap-common   │                │          │              │                   │                  │                                                              │
│                  │                │          │              │                   │                  │                                                              │
│                  │                │          │              │                   │                  │                                                              │
├──────────────────┼────────────────┤          ├──────────────┼───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libmount1        │ CVE-2024-28085 │          │ fixed        │ 2.38.1-5+b1       │ 2.38.1-5+deb12u1 │ util-linux: CVE-2024-28085: wall: escape sequence injection  │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-28085                   │
├──────────────────┤                │          │              │                   │                  │                                                              │
│ libsmartcols1    │                │          │              │                   │                  │                                                              │
│                  │                │          │              │                   │                  │                                                              │
├──────────────────┼────────────────┤          ├──────────────┼───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libsqlite3-0     │ CVE-2023-7104  │          │ affected     │ 3.40.1-2          │                  │ sqlite: heap-buffer-overflow at sessionfuzz                  │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-7104                    │
├──────────────────┼────────────────┤          ├──────────────┼───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libssl3          │ CVE-2023-5363  │          │ fixed        │ 3.0.9-1           │ 3.0.11-1~deb12u2 │ openssl: Incorrect cipher key and IV length processing       │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-5363                    │
├──────────────────┼────────────────┤          │              ├───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libsystemd0      │ CVE-2023-50387 │          │              │ 252.12-1~deb12u1  │ 252.23-1~deb12u1 │ bind9: KeyTrap - Extreme CPU consumption in DNSSEC validator │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-50387                   │
│                  ├────────────────┤          │              │                   │                  ├──────────────────────────────────────────────────────────────┤
│                  │ CVE-2023-50868 │          │              │                   │                  │ bind9: Preparing an NSEC3 closest encloser proof can exhaust │
│                  │                │          │              │                   │                  │ CPU resources                                                │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-50868                   │
├──────────────────┼────────────────┤          │              │                   │                  ├──────────────────────────────────────────────────────────────┤
│ libudev1         │ CVE-2023-50387 │          │              │                   │                  │ bind9: KeyTrap - Extreme CPU consumption in DNSSEC validator │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-50387                   │
│                  ├────────────────┤          │              │                   │                  ├──────────────────────────────────────────────────────────────┤
│                  │ CVE-2023-50868 │          │              │                   │                  │ bind9: Preparing an NSEC3 closest encloser proof can exhaust │
│                  │                │          │              │                   │                  │ CPU resources                                                │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-50868                   │
├──────────────────┼────────────────┤          │              ├───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ libuuid1         │ CVE-2024-28085 │          │              │ 2.38.1-5+b1       │ 2.38.1-5+deb12u1 │ util-linux: CVE-2024-28085: wall: escape sequence injection  │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-28085                   │
├──────────────────┤                │          │              │                   │                  │                                                              │
│ mount            │                │          │              │                   │                  │                                                              │
│                  │                │          │              │                   │                  │                                                              │
├──────────────────┼────────────────┤          │              ├───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ openssl          │ CVE-2023-5363  │          │              │ 3.0.9-1           │ 3.0.11-1~deb12u2 │ openssl: Incorrect cipher key and IV length processing       │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-5363                    │
├──────────────────┼────────────────┤          ├──────────────┼───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ perl-base        │ CVE-2023-31484 │          │ affected     │ 5.36.0-7          │                  │ perl: CPAN.pm does not verify TLS certificates when          │
│                  │                │          │              │                   │                  │ downloading distributions over HTTPS...                      │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-31484                   │
│                  ├────────────────┤          ├──────────────┤                   ├──────────────────┼──────────────────────────────────────────────────────────────┤
│                  │ CVE-2023-47038 │          │ fixed        │                   │ 5.36.0-7+deb12u1 │ perl: Write past buffer end via illegal user-defined Unicode │
│                  │                │          │              │                   │                  │ property                                                     │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-47038                   │
├──────────────────┼────────────────┤          │              ├───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ util-linux       │ CVE-2024-28085 │          │              │ 2.38.1-5+b1       │ 2.38.1-5+deb12u1 │ util-linux: CVE-2024-28085: wall: escape sequence injection  │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2024-28085                   │
├──────────────────┤                │          │              │                   │                  │                                                              │
│ util-linux-extra │                │          │              │                   │                  │                                                              │
│                  │                │          │              │                   │                  │                                                              │
├──────────────────┼────────────────┼──────────┼──────────────┼───────────────────┼──────────────────┼──────────────────────────────────────────────────────────────┤
│ zlib1g           │ CVE-2023-45853 │ CRITICAL │ will_not_fix │ 1:1.2.13.dfsg-1   │                  │ zlib: integer overflow and resultant heap-based buffer       │
│                  │                │          │              │                   │                  │ overflow in zipOpenNewFileInZip4_6                           │
│                  │                │          │              │                   │                  │ https://avd.aquasec.com/nvd/cve-2023-45853                   │
└──────────────────┴────────────────┴──────────┴──────────────┴───────────────────┴──────────────────┴──────────────────────────────────────────────────────────────┘
2024-10-03T23:48:45+05:00	INFO	Table result includes only package filenames. Use '--format json' option to get the full path to the package file.

Python (python-pkg)
===================
Total: 2 (HIGH: 2, CRITICAL: 0)

┌───────────────────────┬────────────────┬──────────┬────────┬───────────────────┬───────────────┬───────────────────────────────────────────────────────┐
│        Library        │ Vulnerability  │ Severity │ Status │ Installed Version │ Fixed Version │                         Title                         │
├───────────────────────┼────────────────┼──────────┼────────┼───────────────────┼───────────────┼───────────────────────────────────────────────────────┤
│ setuptools (METADATA) │ CVE-2022-40897 │ HIGH     │ fixed  │ 57.5.0            │ 65.5.1        │ pypa-setuptools: Regular Expression Denial of Service │
│                       │                │          │        │                   │               │ (ReDoS) in package_index.py                           │
│                       │                │          │        │                   │               │ https://avd.aquasec.com/nvd/cve-2022-40897            │
│                       ├────────────────┤          │        │                   ├───────────────┼───────────────────────────────────────────────────────┤
│                       │ CVE-2024-6345  │          │        │                   │ 70.0.0        │ pypa/setuptools: Remote code execution via download   │
│                       │                │          │        │                   │               │ functions in the package_index module in...           │
│                       │                │          │        │                   │               │ https://avd.aquasec.com/nvd/cve-2024-6345             │
└───────────────────────┴────────────────┴──────────┴────────┴───────────────────┴───────────────┴───────────────────────────────────────────────────────┘
```

# Python 3.9

### Bandit

```bandit
[main]	INFO	profile include tests: None
[main]	INFO	profile exclude tests: None
[main]	INFO	cli include tests: None
[main]	INFO	cli exclude tests: None
[main]	INFO	running on Python 3.9.20
Run started:2024-10-03 18:35:45.507101

Test results:
	No issues identified.

Code scanned:
	Total lines of code: 31
	Total lines skipped (#nosec): 0
	Total potential issues skipped due to specifically being disabled (e.g., #nosec BXXX): 0

Run metrics:
	Total issues (by severity):
		Undefined: 0
		Low: 0
		Medium: 0
		High: 0
	Total issues (by confidence):
		Undefined: 0
		Low: 0
		Medium: 0
		High: 0
Files skipped (0):
```

### Semgrep

```semgrep
METRICS: Using configs from the Registry (like --config=p/ci) reports pseudonymous rule metrics to semgrep.dev.
To disable Registry rule metrics, use "--metrics=off".
Using configs only from local files (like --config=xyz.yml) does not enable metrics.

More information: https://semgrep.dev/docs/metrics

               
               
┌─────────────┐
│ Scan Status │
└─────────────┘
  Scanning 276 files tracked by git with 4 Code rules:
  Scanning 1 file with 4 python rules.
                
                
┌──────────────┐
│ Scan Summary │
└──────────────┘

Ran 4 rules on 1 file: 0 findings.
If Semgrep missed a finding, please send us feedback to let us know!
See https://semgrep.dev/docs/reporting-false-negatives/
```

### Trivy

```trivy
For OSS Maintainers: VEX Notice
--------------------------------
If you're an OSS maintainer and Trivy has detected vulnerabilities in your project that you believe are not actually exploitable, consider issuing a VEX (Vulnerability Exploitability eXchange) statement.
VEX allows you to communicate the actual status of vulnerabilities in your project, improving security transparency and reducing false positives for your users.
Learn more and start using VEX: https://aquasecurity.github.io/trivy/v0.56/docs/supply-chain/vex/repo#publishing-vex-documents

To disable this notice, set the TRIVY_DISABLE_VEX_NOTICE environment variable.


api_calc:latest (debian 12.7)
=============================
Total: 10 (HIGH: 9, CRITICAL: 1)

┌──────────────────┬────────────────┬──────────┬──────────────┬───────────────────┬───────────────┬─────────────────────────────────────────────────────────────┐
│     Library      │ Vulnerability  │ Severity │    Status    │ Installed Version │ Fixed Version │                            Title                            │
├──────────────────┼────────────────┼──────────┼──────────────┼───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ libexpat1        │ CVE-2023-52425 │ HIGH     │ affected     │ 2.5.0-1+deb12u1   │               │ expat: parsing large tokens can trigger a denial of service │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-52425                  │
├──────────────────┼────────────────┤          │              ├───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ libgssapi-krb5-2 │ CVE-2024-26462 │          │              │ 1.20.1-2+deb12u2  │               │ krb5: Memory leak at /krb5/src/kdc/ndr.c                    │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26462                  │
├──────────────────┤                │          │              │                   ├───────────────┤                                                             │
│ libk5crypto3     │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
├──────────────────┤                │          │              │                   ├───────────────┤                                                             │
│ libkrb5-3        │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
├──────────────────┤                │          │              │                   ├───────────────┤                                                             │
│ libkrb5support0  │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
├──────────────────┼────────────────┤          │              ├───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ libldap-2.5-0    │ CVE-2023-2953  │          │              │ 2.5.13+dfsg-5     │               │ openldap: null pointer dereference in ber_memalloc_x        │
│                  │                │          │              │                   │               │ function                                                    │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-2953                   │
├──────────────────┤                │          │              │                   ├───────────────┤                                                             │
│ libldap-common   │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
├──────────────────┼────────────────┤          │              ├───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ libsqlite3-0     │ CVE-2023-7104  │          │              │ 3.40.1-2          │               │ sqlite: heap-buffer-overflow at sessionfuzz                 │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-7104                   │
├──────────────────┼────────────────┤          │              ├───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ perl-base        │ CVE-2023-31484 │          │              │ 5.36.0-7+deb12u1  │               │ perl: CPAN.pm does not verify TLS certificates when         │
│                  │                │          │              │                   │               │ downloading distributions over HTTPS...                     │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-31484                  │
├──────────────────┼────────────────┼──────────┼──────────────┼───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ zlib1g           │ CVE-2023-45853 │ CRITICAL │ will_not_fix │ 1:1.2.13.dfsg-1   │               │ zlib: integer overflow and resultant heap-based buffer      │
│                  │                │          │              │                   │               │ overflow in zipOpenNewFileInZip4_6                          │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-45853                  │
└──────────────────┴────────────────┴──────────┴──────────────┴───────────────────┴───────────────┴─────────────────────────────────────────────────────────────┘
2024-10-03T23:36:17+05:00	INFO	Table result includes only package filenames. Use '--format json' option to get the full path to the package file.

Python (python-pkg)
===================
Total: 2 (HIGH: 2, CRITICAL: 0)

┌───────────────────────┬────────────────┬──────────┬────────┬───────────────────┬───────────────┬───────────────────────────────────────────────────────┐
│        Library        │ Vulnerability  │ Severity │ Status │ Installed Version │ Fixed Version │                         Title                         │
├───────────────────────┼────────────────┼──────────┼────────┼───────────────────┼───────────────┼───────────────────────────────────────────────────────┤
│ setuptools (METADATA) │ CVE-2022-40897 │ HIGH     │ fixed  │ 58.1.0            │ 65.5.1        │ pypa-setuptools: Regular Expression Denial of Service │
│                       │                │          │        │                   │               │ (ReDoS) in package_index.py                           │
│                       │                │          │        │                   │               │ https://avd.aquasec.com/nvd/cve-2022-40897            │
│                       ├────────────────┤          │        │                   ├───────────────┼───────────────────────────────────────────────────────┤
│                       │ CVE-2024-6345  │          │        │                   │ 70.0.0        │ pypa/setuptools: Remote code execution via download   │
│                       │                │          │        │                   │               │ functions in the package_index module in...           │
│                       │                │          │        │                   │               │ https://avd.aquasec.com/nvd/cve-2024-6345             │
└───────────────────────┴────────────────┴──────────┴────────┴───────────────────┴───────────────┴───────────────────────────────────────────────────────┘
```

# Python 3.12

### Bandit

```bandit
[main]	INFO	profile include tests: None
[main]	INFO	profile exclude tests: None
[main]	INFO	cli include tests: None
[main]	INFO	cli exclude tests: None
[main]	INFO	running on Python 3.12.7
Run started:2024-10-03 18:54:15.930078

Test results:
	No issues identified.

Code scanned:
	Total lines of code: 31
	Total lines skipped (#nosec): 0
	Total potential issues skipped due to specifically being disabled (e.g., #nosec BXXX): 0

Run metrics:
	Total issues (by severity):
		Undefined: 0
		Low: 0
		Medium: 0
		High: 0
	Total issues (by confidence):
		Undefined: 0
		Low: 0
		Medium: 0
		High: 0
Files skipped (0):
```

### Semgrep

```semgrep
METRICS: Using configs from the Registry (like --config=p/ci) reports pseudonymous rule metrics to semgrep.dev.
To disable Registry rule metrics, use "--metrics=off".
Using configs only from local files (like --config=xyz.yml) does not enable metrics.

More information: https://semgrep.dev/docs/metrics

               
               
┌─────────────┐
│ Scan Status │
└─────────────┘
  Scanning 285 files tracked by git with 4 Code rules:
  Scanning 1 file with 4 python rules.
                
                
┌──────────────┐
│ Scan Summary │
└──────────────┘

Ran 4 rules on 1 file: 0 findings.
If Semgrep missed a finding, please send us feedback to let us know!
See https://semgrep.dev/docs/reporting-false-negatives/
```

### Trivy

```trivy
For OSS Maintainers: VEX Notice
--------------------------------
If you're an OSS maintainer and Trivy has detected vulnerabilities in your project that you believe are not actually exploitable, consider issuing a VEX (Vulnerability Exploitability eXchange) statement.
VEX allows you to communicate the actual status of vulnerabilities in your project, improving security transparency and reducing false positives for your users.
Learn more and start using VEX: https://aquasecurity.github.io/trivy/v0.56/docs/supply-chain/vex/repo#publishing-vex-documents

To disable this notice, set the TRIVY_DISABLE_VEX_NOTICE environment variable.


api_calc:latest (debian 12.7)
=============================
Total: 10 (HIGH: 9, CRITICAL: 1)

┌──────────────────┬────────────────┬──────────┬──────────────┬───────────────────┬───────────────┬─────────────────────────────────────────────────────────────┐
│     Library      │ Vulnerability  │ Severity │    Status    │ Installed Version │ Fixed Version │                            Title                            │
├──────────────────┼────────────────┼──────────┼──────────────┼───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ libexpat1        │ CVE-2023-52425 │ HIGH     │ affected     │ 2.5.0-1+deb12u1   │               │ expat: parsing large tokens can trigger a denial of service │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-52425                  │
├──────────────────┼────────────────┤          │              ├───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ libgssapi-krb5-2 │ CVE-2024-26462 │          │              │ 1.20.1-2+deb12u2  │               │ krb5: Memory leak at /krb5/src/kdc/ndr.c                    │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2024-26462                  │
├──────────────────┤                │          │              │                   ├───────────────┤                                                             │
│ libk5crypto3     │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
├──────────────────┤                │          │              │                   ├───────────────┤                                                             │
│ libkrb5-3        │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
├──────────────────┤                │          │              │                   ├───────────────┤                                                             │
│ libkrb5support0  │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
├──────────────────┼────────────────┤          │              ├───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ libldap-2.5-0    │ CVE-2023-2953  │          │              │ 2.5.13+dfsg-5     │               │ openldap: null pointer dereference in ber_memalloc_x        │
│                  │                │          │              │                   │               │ function                                                    │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-2953                   │
├──────────────────┤                │          │              │                   ├───────────────┤                                                             │
│ libldap-common   │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
│                  │                │          │              │                   │               │                                                             │
├──────────────────┼────────────────┤          │              ├───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ libsqlite3-0     │ CVE-2023-7104  │          │              │ 3.40.1-2          │               │ sqlite: heap-buffer-overflow at sessionfuzz                 │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-7104                   │
├──────────────────┼────────────────┤          │              ├───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ perl-base        │ CVE-2023-31484 │          │              │ 5.36.0-7+deb12u1  │               │ perl: CPAN.pm does not verify TLS certificates when         │
│                  │                │          │              │                   │               │ downloading distributions over HTTPS...                     │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-31484                  │
├──────────────────┼────────────────┼──────────┼──────────────┼───────────────────┼───────────────┼─────────────────────────────────────────────────────────────┤
│ zlib1g           │ CVE-2023-45853 │ CRITICAL │ will_not_fix │ 1:1.2.13.dfsg-1   │               │ zlib: integer overflow and resultant heap-based buffer      │
│                  │                │          │              │                   │               │ overflow in zipOpenNewFileInZip4_6                          │
│                  │                │          │              │                   │               │ https://avd.aquasec.com/nvd/cve-2023-45853                  │
└──────────────────┴────────────────┴──────────┴──────────────┴───────────────────┴───────────────┴─────────────────────────────────────────────────────────────┘
```
