class University < ActiveRecord::Base
	validates :university_name, presence: true, uniqueness: true
	has_many :projects, :dependent => :destroy
	accepts_nested_attributes_for :projects, :allow_destroy => true
end
