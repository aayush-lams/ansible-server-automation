# minimal-server-setup

Automates security hardening and monitoring for Linux servers.

## What We Do

- **Firewall**: UFW - deny incoming, allow outgoing, open ports 2222,80,443
- **Users**: Create admin and auditor accounts with proper permissions
- **Monitoring**: Deploy health check and backup scripts with cron jobs
- **Network Tools**: Install curl, dig, ping, nslookup

## Files Created

| File | Purpose |
|------|---------|
| `/usr/local/bin/backup.sh` | Daily backup script |
| `/usr/local/bin/health.sh` | System health monitor |
| `/var/log/health.log` | Health check logs |
| `/var/log/backup.log` | Backup logs |
| `/home/asur/firewall_rules.txt` | UFW config backup |

## Cron Jobs

- `0 2 * * *` - Daily backup
- `0 7 * * *` - Daily health check
- `@reboot` - Health check on boot (with 60s delay)
