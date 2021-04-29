class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'へら鮒・鯉' },
    { id: 3, name: '鮎' },
    { id: 4, name: '磯' },
    { id: 5, name: '渓流' },
    { id: 6, name: '船' },
    { id: 7, name: '投げ' },
    { id: 8, name: 'ソルトウォーター（オフショア）' },
    { id: 9, name: 'ソルトウォーター（ショア）' },
    { id: 10, name: 'トラウト' },
    { id: 11, name: 'ブラックバス' },
    { id: 12, name: 'フライ' },
    { id: 13, name: 'その他淡水' },
    { id: 14, name: 'その他海水' }
  ]

  include ActiveHash::Associations
  has_many :posts
  end