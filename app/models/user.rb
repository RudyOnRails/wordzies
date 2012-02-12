class User < ActiveRecord::Base
  has_many :uses
  has_many :words, :through => :uses
 
end
