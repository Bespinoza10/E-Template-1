class AddPaperclipToContacts < ActiveRecord::Migration
  def change
    add_attachment :contacts, :contact_bg
  end
end
