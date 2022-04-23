# Gigih Family Catering - Rails with SQLite3
#### By: KM_G2BE2086_Vidya Chandradev
##### Final Project assignment berbentuk API (JSON)
 Testing API dapat dicoba menggunakan aplikasi REST client seperti [Insomnia](https://insomnia.rest/) atau [Postman](https://www.getpostman.com/).

---

#### Code yang harus dijalankan saat pertama kali :
```bash
bundle install
```
#### Code untuk menggunakan testing RSpec :
```bash
bundle exec rspec -fd
```
#### Code untuk menggunakan Migration :
```bash
rails db:migrate RAILS_ENV=test
```
>##### Jika masih muncul "Migrations are pending" :
```bash
bundle exec rake db:test:prepare
```
>##### then
```bash
bundle exec rake db:migrate
```
Selanjutnya run kembali `bundle exec rspec -fd`

---

### Use Case (Fitur)
1. User dapat menambah, meng-update, dan menghapus data menu.
2. User dapat menambah, meng-update, dan menghapus data  kategori.
3. User dapat menambahkan order.
4. User dapat merubah merubah email pelanggan dan status (NEW, PAID, CANCELED) pada order.
   
---
### API URL Documentations
#### 1. Category Feature
#### GET METHOD :
##### List of Categories
> /api/v1/categories

##### Show Category by Id
> /api/v1/categories/:id

#### 2. Menu Feature
#### GET METHOD :
##### List of Menus
> /api/v1/menus

##### Show Menu by Id
> /api/v1/menus/:id

#### 3. Customer Feature
#### GET METHOD :
##### List of Customers
> /api/v1/customers

##### Show Customer by Id
> /api/v1/customers/:id

#### 4. Order Feature
#### GET METHOD :
##### List of Orders
> /api/v1/orders

##### Show Order by Id
> /api/v1/orders/:id

#### 5. Category Detail Feature
#### GET METHOD :
##### List of Category Details
> /api/v1/category_details

##### Show Order Detail by Id
> /api/v1/category_details/:id

***
_Under maintenance. Not all documentation has been included._