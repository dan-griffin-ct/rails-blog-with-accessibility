require 'rails_helper'


RSpec.describe 'Comment', type: :model do

  it 'is not valid without a name' do   #
    comment = Comment.new(name: nil)
    expect(comment).to_not be_valid
  end

  it 'is not valid without comment text' do   #
    comment = Comment.new(name: "Charles Mingus", comment_text: nil)
    expect(comment).to_not be_valid
  end

  it 'is not valid without a Post id' do
    comment = Comment.new(post_id: nil, name: "Gilfoyle", comment_text: "stallions")
    expect(comment).to_not be_valid
  end

  context 'comment creation' do
    it 'is valid with a Post id, name, and comment text' do
      post = Post.create(title: "test", content: "interesting")
      comment = Comment.new(post_id: post.id, name: "Gilfoyle", comment_text: "stallions")
      expect(comment).to be_valid
    end

    it 'can be created with a Post id, name, and comment text' do
      post = Post.create(title: "test", content: "interesting")
      expect{Comment.create(post_id: post.id, name: "Gilfoyle", comment_text: "stallions")}.to change{Comment.count}.by(1)
    end
  end
end
