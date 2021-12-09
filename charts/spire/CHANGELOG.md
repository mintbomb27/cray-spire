# Changelog
All notable changes to this project will be documented in this file.

## [Unreleased]

## [2.0.0]
### Changed
- Update pgbouncer to master-19 for CVE remediation (CASMPET-5202)

## [1.2.0]
### Changed
- Added external-dns support (CASMPET-3939)
- Updated cray-service requirement to 6.2.0 (CASMPET-4699)
- Added network policy to limit access to spire-tokens service (CASMPET-3941)
- Updated how workloads are created so that new workloads can be easily added
  without requiring upgrade scripts (CASMPET-5142)
