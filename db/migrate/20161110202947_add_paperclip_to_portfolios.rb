class AddPaperclipToPortfolios < ActiveRecord::Migration
  def change
    add_attachment :portfolios, :portfolios_img
  end
end
