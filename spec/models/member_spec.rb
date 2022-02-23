require 'rails_helper'

RSpec.describe Member, type: :model do
  describe 'バリデーションのテスト' do

    context '' do
      it '空欄でないこと' do
        member.name = ''
        is_expected.to eq false
      end
      it '２文字以上であること：１文字は×' do
        member.name = Faker::Lorem.characters(number: 1)
        is_expected.to eq false
      end
      it '２文字以上であること：２文字は◯' do
        member.name = Faker::Lorem.characters(number: 2)
        is_expected.to eq true
      end
      it '20文字以下であること: 20文字は〇' do
        member.name = Faker::Lorem.characters(number: 20)
        is_expected.to eq true
      end
      it '20文字以下であること: 21文字は×' do
        member.name = Faker::Lorem.characters(number: 21)
        is_expected.to eq false
      end
    end

    context 'introductionカラム' do
      it '200文字以下であること: 200文字は〇' do
        member.introduction = Faker::Lorem.characters(number: 200)
        is_expected.to eq true
      end
      it '200文字以下であること: 201文字は×' do
        member.introduction = Faker::Lorem.characters(number: 201)
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Postモデルとの関係' do
      it '1:Nとなっている' do
        expect(Member.reflect_on_association(:posts).macro).to eq :has_many
      end
    end
    context 'ItemFavoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Member.reflect_on_association(:item_favorite).macro).to eq :has_many
      end
    end
    context 'PostCommentモデルとの関係' do
      it '1:Nとなっている' do
        expect(Member.reflect_on_association(:post_comment).macro).to eq :has_many
      end
    end
    context 'PostFavoriteモデルとの関係' do
      it '1:Nとなっている' do
        expect(Member.reflect_on_association(:post_favorite).macro).to eq :has_many
      end
    end
    context 'Followingsとの関係' do
      it '1:Nとなっている' do
        expect(Member.reflect_on_association(:followings).macro).to eq :has_many
      end
    end
    context 'Followersとの関係' do
      it '1:Nとなっている' do
        expect(Member.reflect_on_association(:followers).macro).to eq :has_many
      end
    end
  end
end
