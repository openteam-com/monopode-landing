class CreateValueStorages < ActiveRecord::Migration
  def change
    create_table :value_storages do |t|
      t.string :title
      t.integer :value, default: 683
    end

    ValueStorage.create(title: 'monopode_quantity')
  end
end
