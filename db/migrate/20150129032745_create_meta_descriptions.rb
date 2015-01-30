class CreateMetaDescriptions < ActiveRecord::Migration
  def change
    create_table :meta_descriptions do |t|
      t.string :h1
      t.string :og_image_content_type
      t.string :og_image_file_name
      t.string :og_image_file_size
      t.string :og_image_url
      t.string :og_title
      t.string :title
      t.text :description
      t.text :introduction
      t.text :keywords
      t.text :og_description
      t.timestamps
    end

    MetaDescription.create()
  end
end
