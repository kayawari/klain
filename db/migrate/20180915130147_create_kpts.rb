class CreateKpts < ActiveRecord::Migration[5.2]
  def change
    create_table :kpts do |t|
      t.column :title, :string, null: false
    end
  end
end
