hello = db.getSiblingDB("hello");

var objs = [];
for (var i = 0; i < 10; i++) {
    objs.push({ "name": "user" + i });
}
hello.users.insert(objs);
