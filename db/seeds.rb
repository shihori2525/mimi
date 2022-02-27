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
 {name: 'エイト'},
 {name: 'キャンメイキング'},
 {name: 'アクセル'}
]
)

Item.create!(
[
 {name: 'リップスモンスター',brand_id:'1',category_id:'9',item_image: File.open("#{Rails.root}/db/fixtures/sample-item1.JPG")},
 {name: 'トリプルラインエキスパート',brand_id:'1',category_id:'5',item_image: File.open("#{Rails.root}/db/fixtures/sample-item2.JPG")},
 {name: 'クイックラッシュカーラーズ',brand_id:'2',category_id:'7',item_image: File.open("#{Rails.root}/db/fixtures/sample-item3.JPG")},
 {name: 'シルキー＆スフレアイズ',brand_id:'2',category_id:'6',item_image: File.open("#{Rails.root}/db/fixtures/sample-item4.JPG")},
 {name: 'グロウル ルミナイザー',brand_id:'3',category_id:'2',item_image: File.open("#{Rails.root}/db/fixtures/sample-item5.JPG")},
 {name: 'スキーニリッチシャドウ',brand_id:'3',category_id:'6',item_image: File.open("#{Rails.root}/db/fixtures/sample-item6.JPG")}
]
)

Post.create!(
[
 {member_id: '1',item_id:'1',brand_id:'1',
<<<<<<< Updated upstream
  title:'最高です！',rate:'5.0',merit:'色が可愛い',demerit:'少し値段が高い',usability:'スルスル塗れる',cost_performance:'普通',pattern:'01',other:'とってもおすすめです！',image: File.open("#{Rails.root}/db/fixtures/sample-item1.JPG")},
 {member_id: '1',item_id:'2',brand_id:'1',
  title:'可もなく不可もなく',rate:'3.5',merit:'滲まず書ける',demerit:'色が薄い',usability:'ひっかりなく書ける',cost_performance:'良い',pattern:'01',image: File.open("#{Rails.root}/db/fixtures/sample-item2.JPG")},
 {member_id: '1',item_id:'3',brand_id:'2',
  title:'みんなにおすすめしたいです',rate:'5.0',merit:'とにかくカールキープしてくれる',demerit:'落ちない分クレンジングが大変',usability:'滲まず、良い',cost_performance:'最高',pattern:'02',image: File.open("#{Rails.root}/db/fixtures/sample-item3.JPG")},
 {member_id: '1',item_id:'4',brand_id:'2',
  title:'かわいい',rate:'4.5',merit:'グラデしやすい',demerit:'少し粉っぽい',usability:'少し粉っぽい',cost_performance:'良い',pattern:'04',image: File.open("#{Rails.root}/db/fixtures/sample-item4.JPG")},
 {member_id: '1',item_id:'5',brand_id:'3',
  title:'使うのが難しい',rate:'1.0',merit:'キラキラのツヤツヤになれる',demerit:'サイボーグっぽくなる',usability:'少し乾燥する',cost_performance:'普通',pattern:'02',image: File.open("#{Rails.root}/db/fixtures/sample-item5.JPG")},
 {member_id: '1',item_id:'6',brand_id:'3',
  title:'この値段でこのクオリティ!',rate:'5.0',merit:'安いのにしっかり発色してくれる',demerit:'ブルベ向きカラーが少ない',usability:'粉質がよくしっとり',cost_performance:'良い',pattern:'05',other:'是非買ってみてください！',image: File.open("#{Rails.root}/db/fixtures/sample-item6.JPG")},
 {member_id: '2',item_id:'1',brand_id:'1',
  title:'うーん…',rate:'3.0',merit:'ティントじゃないので色素沈着しない',demerit:'普通に落ちる',usability:'やわらかい',cost_performance:'柔らかくすぐ減るのであまりよくない',pattern:'06',other:'話題だったので買いましたが、自分には合わなくて残念です'},
 {member_id: '2',item_id:'2',brand_id:'1',
  title:'ナチュラルメイクに必須',rate:'5.0',merit:'ナチュラルに盛れる',demerit:'他と比べると価格が高い',usability:'書きやすい',cost_performance:'良い',pattern:'03'},
 {member_id: '2',item_id:'3',brand_id:'2',
  title:'落とすのに難あり',rate:'2.5',merit:'安い',demerit:'落とすのに時間がかかる',usability:'乾くとパリパリになる',cost_performance:'良い',pattern:'01'},
 {member_id: '2',item_id:'4',brand_id:'2',
  title:'好みじゃなかった',rate:'3.0',merit:'どこにでもある',demerit:'色が合わなかった',usability:'さらさらよりのしっとり',cost_performance:'良い',pattern:'03',other:'PCに合わせて選ぶことをおすすめします'},
 {member_id: '2',item_id:'5',brand_id:'3',
  title:'ツヤ肌好きな人に',rate:'4.5',merit:'ツヤツヤの肌になれます',demerit:'使い方を間違えるとテカテカになる',usability:'しっとり',cost_performance:'とても良い',pattern:'03'},
 {member_id: '2',item_id:'6',brand_id:'3',
  title:'いい感じ',rate:'3.5',merit:'パールが綺麗',demerit:'締め色が残る',usability:'しっとりした粉質',cost_performance:'良い',pattern:'05'},
 {member_id: '3',item_id:'1',brand_id:'1',
  title:'マスクにつかない',rate:'4.5',merit:'マスクに色移りしない',demerit:'手に入らない',usability:'塗りやすい',cost_performance:'普通',pattern:'09'},
 {member_id: '3',item_id:'2',brand_id:'1',
 title:'色々使える',rate:'4.5',merit:'コスパが良い',demerit:'特にない',usability:'筆にコシがあって使いやすい',cost_performance:'良い',pattern:'01'},
 {member_id: '3',item_id:'3',brand_id:'2',
  title:'落ちないです',rate:'3.5',merit:'ウォータープルーフで滲まない',demerit:'落としにくい',usability:'カールキープしてくれる',cost_performance:'良い',pattern:'01'},
 {member_id: '3',item_id:'4',brand_id:'2',
  title:'コスパよし',rate:'5.0',merit:'安い、色展開が豊富',demerit:'特になし',usability:'しっとり',cost_performance:'良い',pattern:'01 02 06'},
 {member_id: '3',item_id:'5',brand_id:'3',
  title:'肌が綺麗な人ならいいかも',rate:'3.0',merit:'ツヤが出る',demerit:'毛穴が目立つ',usability:'乾燥する',cost_performance:'良い',pattern:'02'},
 {member_id: '3',item_id:'6',brand_id:'3',
  title:'いまいちでした',rate:'2.5',merit:'安い',demerit:'発色が薄い',usability:'しっとり',cost_performance:'良い',pattern:'01'}
=======
  title:'最高です！',rate:'5.0',merit:'色が可愛い',demerit:'少し値段が高い',usability:'スルスル塗れる',cost_performance:'普通',pattern:'01',other:'とってもおすすめです！',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '1',item_id:'2',brand_id:'1',
  title:'可もなく不可もなく',rate:'3.5',merit:'滲まず書ける',demerit:'色が薄い',usability:'ひっかりなく書ける',cost_performance:'良い',pattern:'01',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '1',item_id:'3',brand_id:'2',
  title:'みんなにおすすめしたいです',rate:'5.0',merit:'とにかくカールキープしてくれる',demerit:'落ちない分クレンジングが大変',usability:'滲まず、良い',cost_performance:'最高',pattern:'02',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '1',item_id:'4',brand_id:'2',
  title:'かわいい',rate:'4.5',merit:'グラデしやすい',demerit:'少し粉っぽい',usability:'少し粉っぽい',cost_performance:'良い',pattern:'04',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '1',item_id:'5',brand_id:'3',
  title:'使うのが難しい',rate:'1.0',merit:'キラキラのツヤツヤになれる',demerit:'サイボーグっぽくなる',usability:'少し乾燥する',cost_performance:'普通',pattern:'02',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '1',item_id:'6',brand_id:'3',
  title:'この値段でこのクオリティ!',rate:'5.0',merit:'安いのにしっかり発色してくれる',demerit:'ブルベ向きカラーが少ない',usability:'粉質がよくしっとり',cost_performance:'良い',pattern:'05',other:'是非買ってみてください！',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '2',item_id:'1',brand_id:'1',
  title:'うーん…',rate:'3.0',merit:'ティントじゃないので色素沈着しない',demerit:'普通に落ちる',usability:'やわらかい',cost_performance:'柔らかくすぐ減るのであまりよくない',pattern:'06',other:'話題だったので買いましたが、自分には合わなくて残念です',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '2',item_id:'2',brand_id:'1',
  title:'ナチュラルメイクに必須',rate:'5.0',merit:'ナチュラルに盛れる',demerit:'他と比べると価格が高い',usability:'書きやすい',cost_performance:'良い',pattern:'03',other:'',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '2',item_id:'3',brand_id:'2',
  title:'落とすのに難あり',rate:'2.5',merit:'',demerit:'',usability:'',cost_performance:'',pattern:'',other:'',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '2',item_id:'4',brand_id:'2',
  title:'好みじゃなかった',rate:'3.0',merit:'どこにでもある',demerit:'色が合わなかった',usability:'さらさらよりのしっとり',cost_performance:'良い',pattern:'03',other:'PCに合わせて選ぶことをおすすめします',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '2',item_id:'5',brand_id:'3',
  title:'ツヤ肌好きな人に',rate:'4.5',merit:'',demerit:'',usability:'',cost_performance:'',pattern:'',other:'',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '2',item_id:'6',brand_id:'3',
  title:'いい感じ',rate:'3.5',merit:'',demerit:'',usability:'',cost_performance:'',pattern:'',other:'',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '3',item_id:'1',brand_id:'1',
  title:'マスクにつかない',rate:'4.5',merit:'マスクに色移りしない',demerit:'手に入らない',usability:'',cost_performance:'',pattern:'',other:'',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '3',item_id:'2',brand_id:'1',
 title:'色々使える',rate:'4.5',merit:'ウォータープルーフで滲まない',demerit:'落としにくい',usability:'',cost_performance:'',pattern:'',other:'',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '3',item_id:'3',brand_id:'2',
  title:'落ちないです',rate:'3.5',merit:'',demerit:'',usability:'',cost_performance:'',pattern:'',other:'',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '3',item_id:'4',brand_id:'2',
  title:'コスパよし',rate:'5.0',merit:'安い、色展開が豊富',demerit:'特になし',usability:'しっとり',cost_performance:'良い',pattern:'01 02 06',other:'nil',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '3',item_id:'5',brand_id:'3',
  title:'肌が綺麗な人ならいいかも',rate:'3.0',merit:'',demerit:'',usability:'',cost_performance:'',pattern:'',other:'',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
 {member_id: '3',item_id:'6',brand_id:'3',
  title:'いまいちでした',rate:'2.5',merit:'',demerit:'発色が薄い',usability:'',cost_performance:'',pattern:'',other:'',image: File.open("#{Rails.root}/db/fixtures/sample-item.JPG")},
>>>>>>> Stashed changes
]
)