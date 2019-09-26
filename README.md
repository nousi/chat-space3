# README

##Userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|

###Association
- has_many :groups, through: :members
- has_many :comments
- has_many :messages



##Groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

###Association
- belongs_to :user, through: :members
- has_many :comments
- has_many :messages



##Messagesテーブル
|Column|Type|Options|
|------|----|-------|
|group_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

###Association
- belongs_to :user
- belongs_to :group

##Commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|-------|
|image|string|-------|
|group_id|references|null: false, foreign_key: true|
|group_id|references|null: false, foreign_key: true|

###Association
- belongs_to :user
- belongs_to :group





