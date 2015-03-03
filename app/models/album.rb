class Album < ActiveRecord::Base
	has_many :songs
	belongs_to :genre
	belongs_to :artist

	validates :title, presence:true
 	validates :title, length:{maximum:90}
 	validates :title, uniqueness:true

 	mount_uploader :cover, CoverUploader
	
end
