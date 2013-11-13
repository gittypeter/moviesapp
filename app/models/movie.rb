class Movie < ActiveRecord::Base
      belongs_to :genre
	  validates :title, :genre_id, presence: true
	  validate :must_have_valid_trailer 
	  def must_have_valid_trailer
	  unless trailer.include?("<iframe")
	  errors.add(:trailer,"must include iframe tag")
   end
  end
end
