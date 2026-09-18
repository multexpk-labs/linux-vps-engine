# VPS Troubleshooting Method

Use evidence before making changes.

## Slow server

    uptime
    free -h
    vmstat 1 5
    top
    iostat -xz 1 5

Separate CPU, memory, storage I/O, network and application bottlenecks.

## Full disk

    df -hT
    df -ih
    du -xhd1 / 2>/dev/null | sort -h
    journalctl --disk-usage

Identify the actual consumer before deleting anything.

## Failed service

    systemctl status SERVICE --no-pager
    journalctl -u SERVICE -n 100 --no-pager
    systemctl cat SERVICE

Validate configuration before restarting.

## Port problem

    ss -lntup

Then check application binding, local firewall, provider firewall, reverse proxy, DNS and external proxy/CDN configuration.

## High memory

    free -h
    ps aux --sort=-%mem | head -20
    systemd-cgtop

Distinguish filesystem cache from genuine memory pressure.

## General rule

    measure → isolate → change one thing → verify
