class AddAttachmentHeaderBgToHeaders < ActiveRecord::Migration
  def self.up
    change_table :headers do |t|
      t.attachment :header_bg
    end
  end

  def self.down
    remove_attachment :headers, :header_bg
  end
end
