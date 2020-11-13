#1. add migrations: rake db:create_migration NAME=actors
#2. associations
#3. follow read me!! do not need the extra methods at end will cause errors

require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    self.first_name + " " + self.last_name
  end
  
  def list_roles 
  self.characters.collect do |t|
     "#{t.name} - #{t.show.name}"
 end
  end
end
