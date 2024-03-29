# アプリ名
## 「TOTOJIMAN（とと自慢）」

# 概要
釣りを趣味とする人たち向けの、釣果自慢&ガイド依頼アプリです。
釣果を写真やテキストとともに投稿したり、釣りが上手い人にガイドを依頼したりする機能を実装しています。

# 本番環境
URL：https://totojiman.herokuapp.com/
テスト用アカウント
アドレス：test@123.com
パスワード：testtest

GitHub：https://github.com/umigame4031/totojiman

# 開発背景
私は釣りが好きで、時折大きな魚や珍しい魚が釣れると、「いろんな人に自慢したい！」という気持ちが湧いてきます。釣果の投稿はFacebook等のSNSでも可能ですが、「自慢」ということに対する価値観は利用者によって様々なため、利用を控えていました。
そこで、釣果の自慢を前提としたアプリがあれば、同じような気持ちの釣り人が、気兼ねなく投稿できると思いました。

また、釣りは新しく始めたい、うまくなりたいと思っても、人に直接教わる機会がほとんどありません。
そこで、釣りが上手な人と繋がり、ガイドを依頼できるアプリがあれば、もっと気軽に釣りを始めたり、技術を向上させたりできると思いました。

以上のことから、釣果投稿機能・ガイド依頼機能をもつ本アプリを制作しようと考えました。

# DEMO
### 「釣果投稿機能」
トップページの「投稿する」ボタンをクリックし
[![Image from Gyazo](https://i.gyazo.com/5a74d0afda9f6ce2672a205f7af477d3.png)](https://gyazo.com/5a74d0afda9f6ce2672a205f7af477d3)

投稿内容を入力して「投稿する」ボタンをクリックすると
[![Image from Gyazo](https://i.gyazo.com/ac837c77af29c1a1b190875740c0ea9d.png)](https://gyazo.com/ac837c77af29c1a1b190875740c0ea9d)

トップページに投稿内容が反映されます。
[![Image from Gyazo](https://i.gyazo.com/092a0a30fa6b7b62c4ea2bcba6a47005.png)](https://gyazo.com/092a0a30fa6b7b62c4ea2bcba6a47005)

### 「ガイド依頼機能」
投稿者以外のユーザーが投稿された写真をクリックすると、投稿の詳細が表示され
[![Image from Gyazo](https://i.gyazo.com/329b5796971bd3bd5324f85127cd8c9c.png)](https://gyazo.com/329b5796971bd3bd5324f85127cd8c9c)

「ガイドを依頼する」ボタンをクリックすると、カード情報入力ページに遷移し、
[![Image from Gyazo](https://i.gyazo.com/65db1334ff94a594ab530e2aa127f92f.png)](https://gyazo.com/65db1334ff94a594ab530e2aa127f92f)

「ガイド依頼を確定する」ボタンをクリックすると、決済が行われ、ガイド依頼が完了します。

### 「投稿編集・削除機能」
投稿者が写真をクリックすると、投稿の詳細が表示され
[![Image from Gyazo](https://i.gyazo.com/c8eead364f30a0ef7b944cea9d47b27a.png)](https://gyazo.com/c8eead364f30a0ef7b944cea9d47b27a)

「投稿の編集」ボタンをクリックすると、情報が入力された状態で投稿内容入力ページに遷移し、
[![Image from Gyazo](https://i.gyazo.com/65272cbd998d8b45b8cdc3bd24ccb48c.png)](https://gyazo.com/65272cbd998d8b45b8cdc3bd24ccb48c)

変更したい情報を入力してから「変更する」ボタンをクリックすると、変更が反映された状態でトップページに表示されます。
[![Image from Gyazo](https://i.gyazo.com/67e264195a7efe1b4f46199c7c14dae6.jpg)](https://gyazo.com/67e264195a7efe1b4f46199c7c14dae6)

なお、投稿詳細ページで「削除」ボタンをクリックすると、投稿が削除されます。

# 工夫したポイント
・ユーザーの釣果投稿を促すため、「投稿する」ボタンをトップページ下部に固定し、いつでも投稿できるようにした。

・投稿者かどうかによって、写真をクリックしたときの表示されるボタンが変化するようにし、投稿者本人がガイドを依頼してしまうトラブルが起こらないようにした。

・カード決済機能を実装し、ガイド依頼に伴う金銭的なトラブルを極力減らせるようにした。

# 使用技術（開発環境）
・Ruby 2.6.5
・Ruby on Rails 6.0.3.6
・MySQL 14.14
・RSpec
・JavaScript

# 課題・今後の実装方針
「釣果投稿について」
釣果を自慢するという前提のため、投稿に対して他のユーザーが何らかのリアクションを起こせるようにすることで、ユーザーの満足度を上げることができると考えています。
そのため、投稿に対するいいね機能、コメント機能を実装する予定です。

「ガイド依頼について」
お金を払ってガイドを依頼するという特性上、依頼者のユーザーはなるべく信頼できるユーザーにガイドを頼みたいと考えるはずです。
そこで、ガイドを評価できる機能を実装することで、ユーザーは安心して依頼できるようになると思います。具体的には、星の数で表す評価機能、口コミ機能などを実装する予定です。

「その他」
本アプリは「釣果投稿機能」「ガイド依頼機能」を主としていますが、最終的には釣り人のあらゆる悩みを解決できるアプリにしたいと考えています。
そのため、遠い釣り場まで行くときの交通費を軽減できるよう、相乗り応募機能を実装したり、なるべく安く道具を買えるよう、釣具の価格検索機能を実装したりしたいです。

# DB設計
[![Image from Gyazo](https://i.gyazo.com/a54ea6d4bf69a271c8108fe7c838ef86.png)](https://gyazo.com/a54ea6d4bf69a271c8108fe7c838ef86)