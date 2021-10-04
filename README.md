# MJLアプリ

### 概要
・バイク好きの人達が今までツーリングで行ったことのある絶景スポット、秘境を投稿することができ、目的地までのお勧めルートや時期を共有できるアプリケーションです。

### 制作背景（意図）
・私自身バイク好きでよくツーリングに行くのですが、目的地を決めるときに色々場所を検索してから向かうとき、有名なスポットしか出ないこともあり、行ったことのない場所を探すのが大変で時間かかるときがあります。
そんなときにもっと様々な絶景スポットや秘境を知ることのできるアプリケーションがあったら便利だと考え、このようなアプリケーションを開発しようと思いました。

# DEMO
## トップページ　
<img width="1680" alt="スクリーンショット 2021-10-02 3 01 21" src="https://user-images.githubusercontent.com/88527423/135668276-2a188c1d-0914-41a4-8462-ea3f354f8a15.png">
<img width="1680" alt="スクリーンショット 2021-10-02 4 40 54" src="https://user-images.githubusercontent.com/88527423/135677651-a17d9a64-27f1-411b-a133-c467cdf00ff6.png">

①アプリ名 = トップページに遷移できます。

②新規登録 = 新規登録画面に遷移できます。

③ログイン = ログイン画面に遷移できます。

④新規投稿 = 新規投稿画面に遷移します。

⑤ログアウト = ログアウトしトップページに遷移します。

⑥投稿記事検索機能 = キーワードを入力し、ヒットした記事を閲覧できるようにする機能です。

⑦ログイン中のユーザー名 = ログインしていることがわかるように表示させています。ログアウトすると表示しないようにしています。

⑧投稿記事表示 = 新しい順番に投稿記事を表示表示しています。記事のタイトルと記事の内容も表示しています。

 ## 新規登録画面
 <img width="1680" alt="スクリーンショット 2021-10-02 5 08 29" src="https://user-images.githubusercontent.com/88527423/135681181-6017d63c-d3ea-4afa-9f5b-52e8f0ee96c1.png">

 ①新規登録の入力フォーム = ユーザー名、メールアドレス、パスワードを入力して新規登録します。

 ②空いている空間に絵や吹き出しを使って何か表現できたらと考えています。

 ## ログインページ

 <img width="1680" alt="スクリーンショット 2021-10-04 10 02 03" src="https://user-images.githubusercontent.com/88527423/135779984-29e726cb-65c5-4e1b-a30b-838461d6b7a0.png">

 ①ログイン入力フォーム = ユーザー名、メールアドレス、パスワード、パスワードを再入力してログインします。

 ②新規登録画面のときと同様に、空いている空間に絵や吹き出しを使って何か表現できたらと考えています。

 ## 新規投稿画面

 <img width="1680" alt="スクリーンショット 2021-10-04 10 12 27" src="https://user-images.githubusercontent.com/88527423/135780772-4aee4023-469a-4917-8c99-c721028ecba1.png">

 ①タイトル、テキスト入力フォーム = 記事のタイトルと目的地の感想絵を入力します。

 ②画像投稿機能 = 目的地の写真や、今回の旅での一番おすすめできるスポットの写真を投稿できます。

 ③カレンダー機能 = 投稿した写真の目的地に向かった時期、一番お勧めの時期を投稿できるように実装します。

 ④地図投稿機能 = 目的地までのルート、一番お勧めのルートを投稿できるように実装します。

 ## 投稿記事詳細ページ

 <img width="1680" alt="スクリーンショット 2021-10-04 10 37 30" src="https://user-images.githubusercontent.com/88527423/135781611-74d0dee8-2336-476d-afee-53aae5b7e154.png">
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;↓
<img width="1353" alt="スクリーンショット 2021-10-04 11 22 42" src="https://user-images.githubusercontent.com/88527423/135784374-9eb1371a-7526-4f3e-be3c-cf8cfea4ed49.png">


①投稿された画像を表示

②投稿されたカレンダーの表示

③投稿された地図を表示

④投稿された記事のタイトルを表示

⑤投稿されたテキストを表示

⑥投稿された記事の編集ボタン = 投稿したユーザーが記事を編集できるようにします。

⑦投稿された記事の削除ボタン = 投稿したユーザーが記事を削除できるようにします。

⑧コメント入力フォーム = 投稿された記事に対して、コメントできます。

⑨いいね機能の実装 = いいねボタンを実装します。
※⑥、⑦のボタンは記事を投稿したユーザーしか表示されないように実装します。





# 実装予定の内容
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
| encrypted_password   | string | null: false               |

### Association
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
| calendar_id   | integer    | null: false       |

### Association
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

### Association
- belongs_to :user
- belongs_to :article

## likes

| Colum         | Type       | Options           |
| ------------- | ---------- | ----------------- |
| user_id       | integer    | null: false       |
| article_id    | integer    | null: false       |

### Association
- belongs_to :user
- belongs_to :article

## calendars

| Colum         | Type       | Options           |
| ------------- | ---------- | ----------------- |
| user_id       | integer    | null: false       |
| article_id    | integer    | null: false       |

### Association
- belongs_to :user
- belongs_to :article