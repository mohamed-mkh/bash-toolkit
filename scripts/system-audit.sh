#!/usr/bin/env bash
set -euo pipefail

# Helper functions

print_header() {
    echo "========================================"
    echo "  SYSTEM AUDIT REPORT"
    echo "========================================"
}

print_system_info() {
    printf "%-20s : %s\n" "Hostname" "$(hostname)"
    printf "%-20s : %s\n" "Kernel" "$(uname -r)"
    printf "%-20s : %s\n" "Date" "$(date)"
    printf "%-20s : %s\n" "Uptime" "$(uptime -p)"
}

print_memory() {
    echo "--- Memory ---"
    free -h
}

print_disk_usage() {
    echo "--- Disk Usage ---"
    df -h -t ext4
}

print_top5_processes_by_cpu() {
    echo "--- Top 5 Processes by CPU ---"
    ps aux --sort=-%cpu | head -6
}

print_top5_processes_by_ram() {
    echo "--- Top 5 Processes by RAM ---"
    ps aux --sort=-%mem | head -6
}

print_errors_in_journal() {
    echo "--- Recent errors in journal (last 10) ---"
    journalctl | grep "ERROR" | tail -10
}

#print_footer() {
#    echo "========================================"
#    echo "  END OF REPORT"
#    echo "========================================"
#}

log_info()  { printf "[INFO]  %s\n" "$*"; }
log_warn()  { printf "[WARN]  %s\n" "$*" >&2; }
log_error() { printf "[ERROR] %s\n" "$*" >&2; }

# Main
main() {
    log_info "Audit started at $(date)"
    print_header
    echo ""
    print_system_info
    echo ""
    print_memory
    echo ""
    print_disk_usage
    echo ""
    print_top5_processes_by_cpu
    echo ""
    print_top5_processes_by_ram
    echo ""
    print_errors_in_journal
    echo ""
}

main "$@"
