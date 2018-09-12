This project fullfil all the requirenments of the assignment. The solution is provided in ruby language, as a web application where you can interact with the application. Please follow the instruction to run it. 

# Setup

We need to install Ruby and Rails to run this project. If you are working on linux OS then ruby is pre install in your machine. Just go wi
th command 

```ruby
gem install rails
```

This will install the platform. No move to the root directory of this folder then write command  `bundle install` 
Now visit `https://localhost:3000` to see the app. Now you are done with all the setup.

# Quick Review

* `Modularity`: The code is divided in three models which are owner, nodes and associations. The association model keeps a track of child and root node

* `CRUD operations`: There is two main sections of app, which are nodes and owners. You can visit them at routes `/nodes` and `/owners`

* Following are features it supports:
    * Creating a node with values provided by user
    * Creting Ownership of a node
    * Encrypting values while generating the node
    * Decrypting values while showing them
    * Complete CRUD (create, read, update, delete) operations on the owner model
    * Verify owner
    * Complete CRUD (create, read, update, delete) operations on node

I have attached some screenshots for your references:

Landing page of our website, which shows all the nodes present:
![Node index view](https://user-images.githubusercontent.com/16839496/45465199-c8815600-b731-11e8-9a35-ef9a1f95c7f7.png)

We have an interactive form to create a new node
![Node new view](https://user-images.githubusercontent.com/16839496/45465332-552c1400-b732-11e8-804d-ce66b3637f91.png)

We can view any node (while showing for the owner it will decrypt the values)
![Node show](https://user-images.githubusercontent.com/16839496/45466129-e486f680-b735-11e8-908c-cce1dddbed4e.png)


Similarly we have all CRUD operations on Owner model
![Owern index page](https://user-images.githubusercontent.com/16839496/45466105-cb7e4580-b735-11e8-81fd-e53c04132d39.png)


We can view any of our created node
# Code Quality

* I have followed the industry standards of version controll, linting, and best practises.

* You have full `CRUD` (create, delete, show, read) operations on both owner and nodes.

* I have followed REST full pattern. Please visit my `app/controllers/nodes_controller.rb` to see an example of my code quality. I have separated my code as per the `design patterns of REST`

* I avoided making a command line application or a module for it because it will be not too much user friendly, but this is easy to use.

> While creating the project I have focused on code quality and functionality both, in the process I missed a functionality of giving access of a node to other owner, because I was focuing on best practises and industry standards. But surely I can develop that functionality provided more time. For and queries please mail me at `raounaqsharma@gmail.com`

# Additional Development
I have added view functionality of nodes in decrypted format is the node is accessed by its owner. I planned to make a authentication system for a owner and show a dashboard of his nodes only if he is not an admin, and can perform CRUD operations on his nodes. 