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
end
