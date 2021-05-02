require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#create' do
    before do
      @post = FactoryBot.build(:post)
    end

    context '釣果投稿ができるとき' do
      it 'title,date,area_id,field,genre_id,fish,tackle,text,imageが存在すれば投稿できる' do
        
      end
    end

    context '釣果投稿ができないとき' do

    end
  end
end
