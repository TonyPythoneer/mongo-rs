# unclean shutdown, refer: https://github.com/docker-library/mongo/issues/62
if [ -f /data/db/mongod.lock ]; then
    rm /data/db/mongod.lock
fi

mongod --config /settings/rs-no-auth.conf