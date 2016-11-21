class Content < ActiveRecord::Base
  has_attached_file :header_bg, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :contact_bg, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :header_bg, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :contact_bg, content_type: /\Aimage\/.*\z/
end
