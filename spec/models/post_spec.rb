require 'rails_helper'

RSpec.describe 'Post', type: :model do

  it 'is not valid without a title' do   #
    post = Post.new(title: nil)
    expect(post).to_not be_valid
  end

  it 'is not valid without content' do   #
    post = Post.new(title: "test", content: nil)
    expect(post).to_not be_valid
  end
end