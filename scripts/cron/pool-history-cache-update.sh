#!/bin/bash
#DB_NAME=cexplorer

tip=$(psql -h ${POSTGRES_HOST} -qbt -c "select extract(epoch from time)::integer from block order by id desc limit 1;" | xargs)

if [[ $(( $(date +%s) - tip )) -gt 300 ]]; then
  echo "$(date +%F_%H:%M:%S) Skipping as database has not received a new block in past 300 seconds!" && exit 1
fi

echo "$(date +%F_%H:%M:%S) Running pool history cache update..."
psql -h ${POSTGRES_HOST} -qbt -c "SELECT {{SCHEMA}}.pool_history_cache_update();" 1>/dev/null 2>&1
echo "$(date +%F_%H:%M:%S) Job done!"