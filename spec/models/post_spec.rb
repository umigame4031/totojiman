require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '釣果投稿の保存' do
    context '釣果投稿ができるとき' do
      it 'title,date,area_id,field,genre_id,fish,tackle,text,imageが存在すれば投稿できる' do
        expect(@post).to be_valid
      end
    end

    context '釣果投稿ができないとき' do
      it 'titleが空だと投稿できない' do
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Title can't be blank")
      end
      it 'dateが空だと投稿できない' do
        @post.date = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Date can't be blank")
      end
      it 'area_idが空だと投稿できない' do
        @post.area_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Area can't be blank")
      end
      it 'fieldが空だと投稿できない' do
        @post.field = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Field can't be blank")
      end
      it 'genre_idが空だと投稿できない' do
        @post.genre_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Genre can't be blank")
      end
      it 'fishが空だと投稿できない' do
        @post.fish = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Fish can't be blank")
      end
      it 'tackleが空だと投稿できない' do
        @post.tackle = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Tackle can't be blank")
      end
      it 'textが空だと投稿できない' do
        @post.text = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("Text can't be blank")
      end
      it 'imageが空だと投稿できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("Image can't be blank")
      end
      it 'area_idが数字以外では投稿できない' do
        @post.area_id = 'a'
        @post.valid?
        expect(@post.errors.full_messages).to include('Area is not a number')
      end
      it 'genre_idが数字以外では投稿できない' do
        @post.genre_id = 'a'
        @post.valid?
        expect(@post.errors.full_messages).to include('Genre is not a number')
      end
      it 'area_idが1では投稿できない' do
        @post.area_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Area must be other than 1')
      end
      it 'genre_idが1では投稿できない' do
        @post.genre_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include('Genre must be other than 1')
      end
      it 'userが紐付いていなければ投稿できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('User must exist')
      end
    end
  end
end
