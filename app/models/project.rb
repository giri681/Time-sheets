class Project < ApplicationRecord
	has_many :time_sheets
	accepts_nested_attributes_for :time_sheets
end
