class AddStateIDtoPatient < ActiveRecord::Migration[6.1]
  def change
    remove_column :patients, :state, :string
    add_reference :patients, :state, foreign_key: true
  end
end
