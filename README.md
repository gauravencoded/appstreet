# README

# Setup instuction


Clone the project, and go inside the dir.
Bundle
update database.yml file by your postgresql password
rake db:create
rake db:migrate
rake db:seed
rails s


# Three apis are below

GET =>  localhost:3000/api/products?search=samsung  #to search product by name

GET =>   localhost:3000/api/products  #Fetch all products

GET => localhost:3000/api/products/id  #Fetch product varient by product ID