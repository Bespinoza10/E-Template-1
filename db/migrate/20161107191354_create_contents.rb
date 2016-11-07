class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :name
      t.string :header_title
      t.string :services_title
      t.string :slogan_title
      t.string :about_title
      t.text :about_description
      t.string :contact_title
      t.string :contact_subtitle
      t.string :fb_username
      t.string :ig_username
      t.string :twitter_username
      t.string :in_username
      t.string :pin_username


      t.timestamps null: false
    end
  end
end
