class CreateFooters < ActiveRecord::Migration
  def change
    create_table :footers do |t|
      t.string :fb_username
      t.string :ig_username
      t.string :twitter_username
      t.string :in_username
      t.string :pin_username

      t.timestamps null: false
    end
  end
end
