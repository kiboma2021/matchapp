class CreateCompanions < ActiveRecord::Migration[7.0]
  def change
    create_table :companions do |t|
      t.string :name
      t.integer :age
      t.float :height
      t.text :bio

      t.timestamps
    end
  end
end
