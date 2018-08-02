# Please change host of primary host
mongodump -u root -p 123 \
    --authenticationDatabase "admin" \
    -h mongo3 -d hello \
    -o ./mongo-backup
