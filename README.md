# Mongo Replica Set

架設練習

1. 使用 docker，作為架設環境。準備好 3 個 mongo instance。
2. 對其中一個 mongo 做添加帳號權限管理，已知每個權限對應獨立的行為，目前添加權限如下：
	1. clusterAdmin 賦予操作 cluster 資運的權限
	2. userAdminAnyDatabase 賦予建立帳號的權限
	3. readWriteAnyDatabase 賦予讀寫權限。等等需要寫假資料，做 dump 和 restore 。
3. 在 config 添加 keyfile 和 replSetName，重啟 mongo，讓 mongo cluster 之間啟動內部認證
4. 使用剛創建的 admin 帳號登入
5. 呼叫 rs.initiate({...}) 把 mongo instances 串起來，_id 設為在 config 或是 mongod 所設置的 replSetName
6. 查看 rs.status() 查看誰是 primary
7. 塞假資料
8. 使用 mongodump 倒出，會出現 ./dump/db_name 以及該路徑下的檔案 collection_name.bson 和 collection_name.metadata,json
9. 進入 mongo，把假資料的 db 刪除
10. 使用 mongorestore 把剛倒出的檔案塞回去
11. 進去 mongo 檢查 primary 和 secondary 該 db 有沒有出現

References:

* [認證啟動](https://docs.mongodb.com/manual/tutorial/enable-authentication/)
* [deploy-replica-set](https://docs.mongodb.com/manual/tutorial/deploy-replica-set/)
* [Deploy New Replica Set With Keyfile Access Control](https://docs.mongodb.com/manual/tutorial/deploy-replica-set/)
* [security-built-in-roles](https://docs.mongodb.com/manual/core/security-built-in-roles/)
* [mongodump](https://docs.mongodb.com/manual/tutorial/backup-and-restore-tools/#basic-mongodump-operations)
* [mongorestore](https://docs.mongodb.com/manual/tutorial/backup-and-restore-tools/#restore-a-database-with-mongorestore)

