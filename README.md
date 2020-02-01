# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# managit DB設計
# SHOPS TABLE
|Column|Type|Options|
|------|----|-------|
|shop_name|string|null:false|
|password|string|null:false|
|address|string|null;false|
|phonenumber|integer|null:false|
|manager|string|null:false|

# Association
- has_many :sales
- has_many :messages
- has_many :customers


# SALES TABLE
|date|datetime|null:false|
|shop_id|references|null:false ,foreign_key:true|
|10o'clock|integer|null:false|
|11o'clock|integer|null:false|
|12o'clock|integer|null:false|
|13o'clock|integer|null:false|
|14o'clock|integer|null:false|
|15o'clock|integer|null:false|
|17o'clock|integer|null:false|
|18o'clock|integer|null:false|
|19o'clock|integer|null:false|
|20o'clock|integer|null:false|
|21o'clock|integer|null:false|
|22o'clock|integer|null:false|

# Assodiation
- belongs_to :shops


# CUSTOMER TABLE
|date|datetime|null:false|
|shop_id|references|null:false ,foreign_key:true|
|10o'clock|integer|null:false|
|11o'clock|integer|null:false|
|12o'clock|integer|null:false|
|13o'clock|integer|null:false|
|14o'clock|integer|null:false|
|15o'clock|integer|null:false|
|17o'clock|integer|null:false|
|18o'clock|integer|null:false|
|19o'clock|integer|null:false|
|20o'clock|integer|null:false|
|21o'clock|integer|null:false|
|22o'clock|integer|null:false|

# Assodiation
- belongs_to :shops

# MESSAGES TABLE
|shop_id|references|null:false ,foreign_key:true|
|message|text||

