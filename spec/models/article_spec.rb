require 'spec_helper'

RSpec.describe Article  do
  describe Post do
    it 'should validate presence of title' do
    artivle = Article.new
    post.valid?
    expect(post.errors.messages[:title]).to include "can't be blank"
   end
 end
end
