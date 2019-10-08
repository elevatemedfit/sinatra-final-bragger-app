class User < ActiveRecord::Base
    
    extend Slugify::ClassMethods
    include Slugify::InstanceMethods

has_secure_password #allows us to use bcrypt.

has_many :posts
end