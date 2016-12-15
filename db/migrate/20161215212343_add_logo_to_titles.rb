class AddLogoToTitles < ActiveRecord::Migration
  def change
    add_column :titles, :logo_name, :string
  end
end
