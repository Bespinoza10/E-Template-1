class AddPaperclipToServices < ActiveRecord::Migration
  def change
    add_attachment :services, :services_img
  end
end
