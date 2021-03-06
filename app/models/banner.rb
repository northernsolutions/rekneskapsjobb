class Banner < ApplicationRecord
  has_attached_file :left, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :left, content_type: /\Aimage\/.*\z/

  has_attached_file :right, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :right, content_type: /\Aimage\/.*\z/

  has_attached_file :top, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :top, content_type: /\Aimage\/.*\z/

  has_attached_file :middle, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :middle, content_type: /\Aimage\/.*\z/

  has_attached_file :low, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :low, content_type: /\Aimage\/.*\z/
end
