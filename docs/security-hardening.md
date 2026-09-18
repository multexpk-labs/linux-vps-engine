# Linux VPS Security Hardening

Defensive baseline for systems you are authorized to administer.

## Updates

Debian/Ubuntu:

    sudo apt update
    sudo apt upgrade

RHEL-family:

    sudo dnf update

## Accounts

    getent passwd
    getent group
    sudo -l

Remove unused accounts and minimize administrative access.

## SSH

    sudo sshd -T
    sudo ss -lntp
    sudo sshd -t

Use key authentication and restrict administrative access where practical.

## Firewall

Expose only required services. Common choices include nftables, UFW, firewalld and provider-level firewalls.

Keep a tested emergency access path before changing remote firewall rules.

## Secrets

Never commit passwords, API keys, private keys, tokens or customer data.

## Principle

    Change → Test → Inspect logs → Confirm availability
