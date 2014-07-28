require 'spec_helper' 

require 'spec_helper'

describe "Article" do
  it 'should validate presence of title' do
      let!(:article) { Article.create
      post.valid?
      expect(post.errors.messages[:title]).to include "can't be blank"
    end
  end


