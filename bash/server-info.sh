#!/usr/bin/env bash
set -u

echo "=== Host ==="
hostnamectl 2>/dev/null || hostname
echo
echo "=== OS ==="
grep -E '^(PRETTY_NAME|VERSION_ID)=' /etc/os-release 2>/dev/null || true
echo
echo "=== Kernel ==="
uname -a
echo
echo "=== Uptime ==="
uptime
echo
echo "=== CPU ==="
nproc
echo
echo "=== Memory ==="
free -h
echo
echo "=== Swap ==="
swapon --show 2>/dev/null || true
echo
echo "=== Root filesystem ==="
df -hT /
echo
echo "=== Failed services ==="
systemctl --failed --no-pager 2>/dev/null || true
