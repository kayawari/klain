class CreateProblemItems < ActiveRecord::Migration[5.2]
  def change
    create_table :problem_items do |t|
      t.column :title, :string, null: false
      t.column :description, :text
      t.references :kpt
    end
  end
end
