class Movie < ActiveRecord::Base
  
  def self.all_ratings 
    return ['G','PG','PG-13','R']
  end
  
  def self.with_ratings (ratings)
    if ratings.nil?
      all
    else 
      where(rating: ratings.map(&:upcase))
    end
  end
end
