# Gigih Family Catering - Rails with SQLite3

By: KM_G2BE2086_Vidya Chandradev

Final Project assignment in the form of a JSON API.

## Introduction

Welcome to the Gigih Family Catering API documentation! This API provides various endpoints to interact with the catering system, allowing you to manage menus, categories, customers, and orders. The API is built using Ruby on Rails with SQLite3 as the database.

To use this API, you can make HTTP requests to the provided endpoints using any REST client, such as [Insomnia](https://insomnia.rest/) or [Postman](https://www.postman.com/).

---

### Installation

Before using the API, make sure you have Ruby and Rails installed on your system. Then, follow these steps:

1. Clone the repository:

```bash
git clone https://github.com/catgoesmeow14/Gigih-Family-Catering.git
```

2. Install the required gems:

```bash
bundle install
```

3. Run the database migrations:

#### Code to use RSpec for testing:
```bash
bundle exec rspec -fd
```

#### Code to use Migration:
```bash
rails db:migrate RAILS_ENV=test
```

>##### If "Migrations are pending" still appears:
```bash
bundle exec rake db:test:prepare
```
>##### then
```bash
bundle exec rake db:migrate
```
Then run `bundle exec rspec -fd` again.

4. Start the Rails server:

```bash
rails server
```

Now the API should be up and running at `http://localhost:3000`.

---

### Use Cases (Features)
1. Users can add, update, and delete menu data.
2. Users can add, update, and delete category data.
3. Users can add orders.
4. Users can modify customer email and order status (NEW, PAID, CANCELED).

---

# Gigih Family Catering API Documentation

## API Endpoints

### 1. Category Feature

#### GET METHOD:

##### List of Categories

Get a list of all categories.

- **URL**: `/api/v1/categories`
- **Method**: GET
- **Response**: JSON array of categories

##### Show Category by Id

Get a specific category by its ID.

- **URL**: `/api/v1/categories/:id`
- **Method**: GET
- **Response**: JSON object representing the category

---

### 2. Menu Feature

#### GET METHOD:

##### List of Menus

Get a list of all menus.

- **URL**: `/api/v1/menus`
- **Method**: GET
- **Response**: JSON array of menus

##### Show Menu by Id

Get a specific menu by its ID.

- **URL**: `/api/v1/menus/:id`
- **Method**: GET
- **Response**: JSON object representing the menu

---

### 3. Customer Feature

#### GET METHOD:

##### List of Customers

Get a list of all customers.

- **URL**: `/api/v1/customers`
- **Method**: GET
- **Response**: JSON array of customers

##### Show Customer by Id

Get a specific customer by their ID.

- **URL**: `/api/v1/customers/:id`
- **Method**: GET
- **Response**: JSON object representing the customer

---

### 4. Order Feature

#### GET METHOD:

##### List of Orders

Get a list of all orders.

- **URL**: `/api/v1/orders`
- **Method**: GET
- **Response**: JSON array of orders

##### Show Order by Id

Get a specific order by its ID.

- **URL**: `/api/v1/orders/:id`
- **Method**: GET
- **Response**: JSON object representing the order

---

### 5. Category Detail Feature

#### GET METHOD:

##### List of Category Details

Get a list of all category details.

- **URL**: `/api/v1/category_details`
- **Method**: GET
- **Response**: JSON array of category details

##### Show Category Detail by Id

Get a specific category detail by its ID.

- **URL**: `/api/v1/category_details/:id`
- **Method**: GET
- **Response**: JSON object representing the category detail

---

## Contributions
Please note that contributions to this project are not currently available. This project is Vidya's personal project, and contributions from external contributors are not being accepted at this time. Additionally, there is no formal license associated with the project.

## Contact
For any inquiries or further information, please contact Vidya at vidyaachan14@gmail.com. We appreciate your understanding and interest!
