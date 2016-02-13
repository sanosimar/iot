class Component < ActiveRecord::Base
  belongs_to :user
  belongs_to :group_component
end
