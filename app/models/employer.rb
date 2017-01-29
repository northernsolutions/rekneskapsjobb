class Employer < ApplicationRecord
  has_many :jobs

  has_attached_file :header, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :header, content_type: /\Aimage\/.*\z/

  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
end
