class Job < ApplicationRecord
  belongs_to :employer
  belongs_to :category
  belongs_to :type

  scope :published, ->{ where.not(published_at: nil)}
  scope :unpublished, ->{ where(published_at: nil)}
end
