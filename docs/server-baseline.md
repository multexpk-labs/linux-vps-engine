# Linux VPS Server Baseline

Capture measurable state before troubleshooting or optimization.

## Identity

    hostnamectl
    cat /etc/os-release
    uname -a
    uptime

## CPU and memory

    nproc
    lscpu
    free -h
    swapon --show
    vmstat 1 5

## Storage

    lsblk
    df -hT
    df -ih
    du -xhd1 / 2>/dev/null | sort -h

## Processes

    ps aux --sort=-%cpu | head -20
    ps aux --sort=-%mem | head -20
    systemctl --failed

## Network

    ip -br addr
    ip route
    ss -tulpn

## Logs

    journalctl -p warning -b
    dmesg -T | tail -100

Do not commit real server output to a public repository.
