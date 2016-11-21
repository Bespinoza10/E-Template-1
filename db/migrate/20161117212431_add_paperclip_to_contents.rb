class AddPaperclipToContents < ActiveRecord::Migration
  def change
    add_attachment :contents, :header_bg
    add_attachment :contents, :contact_bg
  end
end
