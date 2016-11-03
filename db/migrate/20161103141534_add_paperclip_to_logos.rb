class AddPaperclipToLogos < ActiveRecord::Migration
  def change
    add_attachment :logos, :logo_image
  end
end
