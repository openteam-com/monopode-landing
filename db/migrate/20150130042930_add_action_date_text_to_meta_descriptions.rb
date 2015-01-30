class AddActionDateTextToMetaDescriptions < ActiveRecord::Migration
  def change
    add_column :meta_descriptions, :action_text, :string
    add_column :meta_descriptions, :action_discount, :string
  end
end
