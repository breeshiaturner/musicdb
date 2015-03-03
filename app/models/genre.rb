class Genre < ActiveRecord::Base
	has_many :artists
	has_many :albums
	has_many :songs

	validates :name, presence:true
	validates :name, length: {minimum: 3}
	validates :name, uniqueness:true
end
