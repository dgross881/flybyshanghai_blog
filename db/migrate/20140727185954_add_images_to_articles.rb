class AddImagesToArticles < ActiveRecord::Migration
  def up
    add_attachment :articles, :images
  end 

  def down
    remov_attachment :articles, :images 
  end
end
