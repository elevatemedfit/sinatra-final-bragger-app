class Post < ActiveRecord::Base

    extend Slugify::ClassMethods
    include Slugify::InstanceMethods
    
    belongs_to :user
    
end