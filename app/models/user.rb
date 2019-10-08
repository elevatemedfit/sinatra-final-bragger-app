class User < ActiveRecord::Base

    extend Slugify::ClassMethods
    include Slugify::InstanceMethods

has_secure_password #allows us to use bcrypt.

validates_presence_of :username, :email, :password 
validates :username, :uniqueness => {:case_sensitive => false}

has_many :posts
end