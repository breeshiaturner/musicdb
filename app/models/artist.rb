class Artist < ActiveRecord::Base
	belongs_to :genre
	has_many :albums
	has_many :songs

	validates :name, :bio, presence:true
	validates :name, length: {maximum: 20}
	validates :name, uniqueness: true
end
