class Post < ActiveRecord::Base
 #attr_accessible :title    required in rails 3.x.x  (mass assignment bug)
  validates :title, :presence => true
end
