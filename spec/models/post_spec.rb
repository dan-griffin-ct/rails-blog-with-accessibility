require 'rails_helper'

RSpec.describe 'Post', type: :model do

  it 'is not valid without a title' do
    post = Post.new(title: nil)
    expect(post).to_not be_valid
  end

  it 'is not valid without content' do
    post = Post.new(title: "test", content: nil)
    expect(post).to_not be_valid
  end

  it 'is valid with a title and content' do
    post = Post.new(title: "test", content: "interesting")
    expect(post).to be_valid
  end

  it 'can be created with a title and content' do
    expect{Post.create(title: "test", content: "let me be created")}.to change{Post.count}.by(1)
  end
end