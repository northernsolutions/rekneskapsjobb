class Job < ApplicationRecord
  belongs_to :employer
  belongs_to :category
  belongs_to :type

  validates :title, presence: true
  validates :employer, presence: true
  validates :category, presence: true
  validates :type, presence: true

  geocoded_by :location
  after_validation :geocode

  scope :published, ->{ where.not(published_at: nil)}
  scope :unpublished, ->{ where(published_at: nil)}
end
