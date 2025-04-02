echo 'start slave config'

pg_basebackup -h master -U rep_username --checkpoint=fast -D /tmp/replica_db -R --slot=random_name3 -C --port=5432

echo 'basebackup done'

pg_ctl -D /tmp/replica_db -o "-p 5433" start

echo 'start on port 5433 done'

echo 'end slave config'
