# Usage

Deploy zoneminder to Docker Swarm. And optionally change state between
daytime and nighttime with cron.

```bash
docker stack deploy -c zm-stack.yml
cp zoneminder.cron /etc/cron.d/zoneminder
```
