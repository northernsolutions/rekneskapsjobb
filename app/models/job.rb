class Job < ApplicationRecord
  belongs_to :employer
  belongs_to :category
  belongs_to :type
end
