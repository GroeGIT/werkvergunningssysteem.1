class Enquirymeasure < ActiveRecord::Base
  belongs_to :enquiry
  has_one :measure
end
