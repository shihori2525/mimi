# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: 'admin@test.com',password: 'password',
)

Member.create!(
 [
  {email: 'olivia@test.com', name: 'Olivia', password: 'password', profile_image: File.open("#{Rails.root}/db/fixtures/sample-user1.png")},
  {email: 'james@test.com', name: 'James', password: 'password', profile_image: File.open("#{Rails.root}/db/fixtures/sample-user2.png")},
  {email: 'lucas@test.com', name: 'Lucas', password: 'password', profile_image: File.open("#{Rails.root}/db/fixtures/sample-user3.png")}
 ]
)

Category.create!(
[
 {name: 'ファンデーション'},
 {name: '化粧下地・コンシーラー'},
 {name: 'フェイスパウダー'},
 {name: 'アイブロウ'},
 {name: 'アイライナー'},
 {name: 'アイシャドウ'},
 {name: 'マスカラ'},
 {name: 'チーク'},
 {name: 'リップ'},
 {name: 'ネイル'}
]
)

Brand.create!(
[
 {name: 'ケイト'},
 {name: 'キャンメイク'},
 {name: 'エクセル'}
]
)

Item.create!(
[
 {name: 'リップモンスター',brand_id:'1',category_id:'9',item_image: File.open("#{Rails.root}/db/fixtures/sample-item1.JPG")},
 {name: 'ダブルラインエキスパート',brand_id:'1',category_id:'5',item_image: File.open("#{Rails.root}/db/fixtures/sample-item2.JPG")},
 {name: 'クイックラッシュカーラー',brand_id:'2',category_id:'7',item_image: File.open("#{Rails.root}/db/fixtures/sample-item3.JPG")},
 {name: 'シルキースフレアイズ',brand_id:'2',category_id:'6',item_image: File.open("#{Rails.root}/db/fixtures/sample-item4.JPG")},
 {name: 'グロウルミナイザー UV',brand_id:'3',category_id:'2',item_image: File.open("#{Rails.root}/db/fixtures/sample-item5.JPG")},
 {name: 'スキニーリッチシャドウ',brand_id:'3',category_id:'6',item_image: File.open("#{Rails.root}/db/fixtures/sample-item6.JPG")}
]
)