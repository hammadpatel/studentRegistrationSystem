class Moreinfo < ActiveRecord::Base
belongs_to :User, :class_name => 'User', :foreign_key => 'id'

end
