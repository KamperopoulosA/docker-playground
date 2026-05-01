db = db.getSiblingDB('product-service');

db.createCollection('products');

db.products.insertMany(
    [
        {
            "name":"iphone",
            "price":"1200"


        },
        {
            "name":"xiaomi",
            "price":"1300"


        }

    ]


)