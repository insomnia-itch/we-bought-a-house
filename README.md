# My app

![Domain Model](erd.png?raw=true "Domain Model")


```
rails generate devise user name:string
rails generate scaffold house name:string address:string lister:belongs_to
rails generate scaffold project priority:integer desired_completion_date:date running_cost:integer house:belongs_to budget:integer estimated_completion_date:date
rails generate scaffold ownership owner:belongs_to house:belongs_to
rails generate scaffold contractor name:string phone_number:string email:string
rails generate scaffold specialty name:string
rails generate scaffold skill contactor:belongs_to specialty:belongs_to
rails generate scaffold contract contractor:belongs_to project:belongs_to time_estimate:integer price_estimate:integer running_cost:integer accepted:boolean

rails generate scaffold note notable:references{polymorphic} body:text author:belongs_to

rails generate scaffold receipt project:belongs_to price:string contractor:belongs_to type_of_cost:string

rails generate scaffold prerequisite required_project:belongs_to locked_project:belongs_to
rails generate scaffold attachment file_extension:string url:string uploader:belongs_to attachable:references{polymorphic}

```
