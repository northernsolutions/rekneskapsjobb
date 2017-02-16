class Job < ApplicationRecord
  belongs_to :employer
  belongs_to :category
  belongs_to :type
  has_many :applies
  has_many :contacts

  validates :title, presence: true
  validates :employer, presence: true
  validates :category, presence: true
  validates :type, presence: true

  geocoded_by :location
  after_validation :geocode

  scope :published, ->{ where.not(published_at: nil)}
  scope :unpublished, ->{ where(published_at: nil)}

  def self.search(params)
    if params[:category] and params[:type].present?
      jobs = Job.where(category_id: params[:category].to_i, type_id: params[:type].to_i)
      jobs = jobs.where("title like ? or content like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
      jobs = jobs.near(params[:location], 20) if params[:location].present?
    else
      jobs = Job.where("title like ? or content like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    end
    jobs
  end
end
