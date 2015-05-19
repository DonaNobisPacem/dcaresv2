class FundSource < ActiveRecord::Base
	belongs_to :fundable, polymorphic: true
  	validates :source_name, presence: true
end
