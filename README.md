# bash-toolkit

> A collection of robust Bash utility scripts for system administration, monitoring, and DevOps tasks.

[![ShellCheck](https://github.com/mohamed-mkh/bash-toolkit/actions/workflows/ci.yml/badge.svg)](https://github.com/mohamed-mkh/bash-toolkit/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)

## About

This repository hosts a curated set of production-grade Bash scripts I use and maintain as part of my DevOps learning journey. Every script follows strict standards:

- `set -euo pipefail` everywhere — fail fast, fail loud
- Linted with [ShellCheck](https://www.shellcheck.net/) (CI enforced)
- POSIX-friendly file naming, idempotent when relevant
- Documented usage and exit codes

## Scripts

_To be added throughout the week._

| Script | Description | Status |
|--------|-------------|--------|
| `system-audit.sh` | System health snapshot (CPU, RAM, disk, top processes) | 🚧 |
| `log-cleanup.sh`  | Find old log files and compress them with a report     | 🚧 |
| `backup-rotate.sh`| Create timestamped backups with N-version retention    | 🚧 |
| `port-scanner.sh` | Lightweight local TCP port scanner in pure Bash        | 🚧 |
| `apache-installer.sh` | Idempotent Apache install and vhost setup          | 🚧 |

## Requirements

- Bash 4.0+
- A POSIX-compliant system (tested on Ubuntu 24.04 LTS / WSL2)
- `shellcheck` (for development)

## Usage

```bash
git clone git@github.com:mohamed-mkh/bash-toolkit.git
cd bash-toolkit
./scripts/<script-name>.sh --help
```

## Development

```bash
# Lint all scripts
shellcheck scripts/*.sh

# Run tests (requires bats)
bats tests/
```

## License

MIT — see [LICENSE](LICENSE).