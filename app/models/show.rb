class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_many :genres, through: :characters
  belongs_to :network
  def actors_list
    self.actors.collect do |t|
      t.full_name 
    end
  end
end