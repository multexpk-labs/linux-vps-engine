#!/usr/bin/env bash
set -u

SERVICE="${1:-}"

if [[ -z "$SERVICE" ]]; then
  echo "Usage: $0 <systemd-service>"
  exit 1
fi

systemctl status "$SERVICE" --no-pager
echo
journalctl -u "$SERVICE" -n 50 --no-pager
