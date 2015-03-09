class Pup < ActiveRecord::Base

  belongs_to :breeder
  
	attr_accessible :pup_name, :owner_name, :breeder, :breed_1, :breed_2, :breeder_responsibility, :overall_health, :trainability, :social_behavior, :energy_level, :simpatico_rating, :comments, :kennel

  def Pup.find_by_breeds(breed1, breed2 = nil)
    Rails.logger.info breed1 + breed2 if breed2
    if breed2
      Pup.where(:breed_1 => breed1, :breed_2 => breed2) + Pup.where(:breed_1 => breed2, :breed_2 => breed1)
    else
      Pup.where(:breed_1 => breed1, :breed_2 => nil)
    end
  end

  def Pup.avg_ratings_by_breeds(breed1, breed2 = nil)

  end

end