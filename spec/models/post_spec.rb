require 'spec_helper'

describe Post do
  it "should require a title" do
    post = Post.new
    expect(post).to_not be_valid
  end
end
