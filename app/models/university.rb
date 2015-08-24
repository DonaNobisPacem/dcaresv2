class University < ActiveRecord::Base
	include RocketPants::Cacheable
	validates :university_name, presence: true, uniqueness: true
	has_many :projects, :dependent => :destroy
	has_many :can_edits
	has_many :users, through: :can_edits
	accepts_nested_attributes_for :projects, :allow_destroy => true
end
