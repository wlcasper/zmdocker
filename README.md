# Usage

Deploy zoneminder to Docker Swarm. And optionally change state between
daytime and nighttime with cron.

```bash
export ZM_NFS_SERVER=192.168.1.2
export EVENT_NFS_SERVER=192.168.1.3
docker stack deploy -c zm-stack.yml -c zm-stack.prod.yml zm
cp zoneminder.cron /etc/cron.d/zoneminder
```
