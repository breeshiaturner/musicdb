class Song < ActiveRecord::Base
	belongs_to :artist
	has_many :songs
	belongs_to :album

	validates :name, presence:true
	validates :name, length: {maximum: 25}
end
