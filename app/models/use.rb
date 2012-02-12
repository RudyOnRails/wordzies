class Use < ActiveRecord::Base
  belongs_to :word
  belongs_to :user
  
  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
