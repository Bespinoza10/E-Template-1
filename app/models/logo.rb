class Logo < ActiveRecord::Base

  has_attached_file :logo_image, styles: { large: "800x800", medium: "500x500>", thumb: "200x200>", smallRect: "200x150" }
  validates_attachment_content_type :logo_image, content_type: /\Aimage\/.*\z/

end
