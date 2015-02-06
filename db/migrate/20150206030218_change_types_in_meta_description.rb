class ChangeTypesInMetaDescription < ActiveRecord::Migration
  def change
    remove_column :meta_descriptions, :action_text
    add_column :meta_descriptions, :action_date_day, :integer

    remove_column :meta_descriptions, :action_discount
    add_column :meta_descriptions, :action_discount, :integer
  end
end
