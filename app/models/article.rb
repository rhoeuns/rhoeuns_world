class Article < ActiveRecord::Base
	#relationships
	belongs_to :category

	#validations
	validates_presence_of :title, :tcontent

	#scopes
	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')
end
