class Word < ActiveRecord::Base
  has_many :uses
  has_many :users, :through => :uses
end
