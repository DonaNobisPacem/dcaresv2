class Contractor < ActiveRecord::Base
  belongs_to :contractable, polymorphic: true
  validates :contractor_name, presence: true
end
