# Please change host of primary host
mongorestore ./mongo-backup/hello \
     -u root -p 123 \
    --authenticationDatabase "admin" \
    -h mongo3 -d hello
