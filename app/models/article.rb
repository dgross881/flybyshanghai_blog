class Article < ActiveRecord::Base
  has_many :comments 

   has_attached_file :images, :styles => { :medium => "100%", :thumb => "100x100>" },
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
 
    validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/
end
