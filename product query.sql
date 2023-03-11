Find all the information about each products?
db.product.find({})

Find the product price which are between 400 to 800?
 db.product.find({product_price:{$gt:400,$lt:800}})

Find the product price which are not between 400 to 600?
db.product.find({product_price:{$not:{$gt:400,$lt:800}}})

List the four product which are grater than 500 in price ?
db.product.find({product_price:{$gt:500}}).limit(4)

Find the product name and product material of each products?
db.product.find({},{id:0,product_name:1,product_price:0,product_material:1,product_color:0})

Find the product with a row id of 10?
db.product.find({id:"10"})

Find only the product name and product material?
 db.product.find({},{id:0,product_name:1,product_price:0,product_material:1,product_color:0})

Find all products which contain the value of soft in product material?
db.product.find({product_material:'soft'})

Find products which contain product color indigo  and product price 492.00?
db.product.find({product_color:"indigo"},{product_price:"492.00"})

Delete the products which product price value are same?
db.product.delete({product_price:$eq})