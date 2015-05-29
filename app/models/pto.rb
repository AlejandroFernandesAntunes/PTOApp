class Pto < ActiveRecord::Base
	has_one :report, dependent: :destroy
	belongs_to :user
end
