class User < ActiveRecord::Base 
  
  has_secure_password
  
  has_many :recipes
  
  def slug
    slug = self.email.downcase.gsub(' ','-')
  end

   def self.find_by_slug(slug)
    User.all.find do |user|
      user.slug == slug
    end
  end
  
  
end 