admin = db.getSiblingDB("admin")
admin.createUser(
    {
        user: "root",
        pwd: "123",
        roles: [
            { role: "userAdminAnyDatabase", db: "admin" },
            { role: "clusterAdmin", db: "admin" },
            { role: "readWriteAnyDatabase", db: "admin" }
        ]
    }
);
