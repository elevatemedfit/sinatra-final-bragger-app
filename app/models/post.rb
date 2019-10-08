class Post < ActiveRecord::Base

    extend Slugifiable::ClassMethods
    include Slugifiable::InstanceMethods

    belongs_to :user

    validates_presence_of :name, :content, :image_url, :step_count, :cardio_score, :caloric_burn, :walking_distance
    
end