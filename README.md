#テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |



### Association

- has_many :comments
- has_many :prototypes

## prototypes テーブル

| Column    | Type      | Options                        |
| --------- | --------- | -------------------------------|
| title     | string    | null: false                    |
| catch_copy| text      | null: false                    |
| concept   | text      | null: false                    |
| user      | references| null: false, foreign_key: true |



### Association

- has_many :comments
- belongs_to :users

## comments テーブル

| Column    | Type       | Options                        |
| ----------| ---------- | ------------------------------ |
| user      | references | null: false, foreign_key: true |
| prototype | references | null: false, foreign_key: true |
| text      | text       | null: false                    |




### Association

- belongs_to :prototypes
- belongs_to :user