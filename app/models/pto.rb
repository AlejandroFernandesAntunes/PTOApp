class Pto < ActiveRecord::Base
	has_one :report, dependent: :destroy
	belongs_to :user

	scope :by_month, lambda { |month| where('extract(month from date) = ?', month) }
end
