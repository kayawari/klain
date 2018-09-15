class CreateTryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :try_items do |t|
      t.column :title, :string, null: false
      t.column :description, :text
      t.column :checked, :boolean, null: false
      t.references :kpt
    end
  end
end
