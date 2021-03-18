class CreateStates < ActiveRecord::Migration[6.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.boolean :services
      t.integer :min_age

      t.timestamps
    end
  end
end
