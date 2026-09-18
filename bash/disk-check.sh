#!/usr/bin/env bash
set -u

echo "=== Filesystem usage ==="
df -hT
echo
echo "=== Inode usage ==="
df -ih
echo
echo "=== Largest directories under / ==="
du -xhd1 / 2>/dev/null | sort -h | tail -20
echo
echo "=== Journal usage ==="
journalctl --disk-usage 2>/dev/null || true
