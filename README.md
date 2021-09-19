# MJLアプリ

### 概要
・バイク好きの人達が今までツーリングで行ったことのある絶景スポット、秘境を投稿することができ、目的地までのお勧めルートや時期を共有できるアプリケーションです。

### 制作背景（意図）
・私自身バイク好きでよくツーリングに行くのですが、目的地を決めるときに色々場所を検索してから向かうとき、有名なスポットしか出ないこともあり、行ったことのない場所を探すのが大変で時間かかるときがあります。
そんなときにもっと様々な絶景スポットや秘境を知ることのできるアプリケーションがあったら便利だと考え、このようなアプリケーションを開発しようと思いました。

### 実装予定の内容
・ユーザー管理機能
・記事投稿機能
・コメント機能
・いいね機能
・カレンダー機能
・地図機能


# DB設計

## usersテーブル

| Colum                | Type   | Options                   |
| -------------------- | ------ | ------------------------- |
| name                 | string | null: false               |
| email                | string | unique: true, null: false |
| password             | string | null: false               |

# Association
- has_many :articles
- has_many :comments
- has_many :likes
- has_many :calendars

## articlesテーブル

| Colum         | Type       | Options           |
| ------------- | ---------- | ----------------- |
| title         | string     | null: false       |
| text          | text       | null: false       |
| user_id       | integer    | null: false       | 
| comment_id    | integer    | null: false       |
| like_id       | integer    | null: false       |
| calendars_id  | integer    | null: false       |

# Association
- belongs_to :user
- has_many :comments
- belongs_to :calendar
- has_many :likes

## commentsテーブル

| Colum         | Type       | Options           |
| ------------- | ---------- | ----------------- |
| comment_text  | text       | null: false       |
| user_id       | integer    | null: false       |
| article_id    | integer    | null: false       |

# Association
- belongs_to :user
- belongs_to :article

## likes

| Colum         | Type       | Options           |
| ------------- | ---------- | ----------------- |
| user_id       | integer    | null: false       |
| article_id    | integer    | null: false       |

# Association
- belongs_to :user
- belongs_to :article

| Colum         | Type       | Options           |
| ------------- | ---------- | ----------------- |
| user_id       | integer    | null: false       |
| article_id    | integer    | null: false       |

# Association
- belongs_to :user
- belongs_to :article