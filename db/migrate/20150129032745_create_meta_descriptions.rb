class CreateMetaDescriptions < ActiveRecord::Migration
  def change
    create_table :meta_descriptions do |t|
      t.string :title
      t.string :h1
      t.text :keywords
      t.text :description
      t.string :og_title
      t.text :og_description
      t.text :introduction
      t.string :og_image_file_name
      t.string :og_image_content_type
      t.string :og_image_file_size
      t.string :og_image_url
      t.timestamps
    end

    MetaDescription.create()
  end
end
