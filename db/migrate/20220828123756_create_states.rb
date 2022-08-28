class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbr
      t.string :code
      t.integer :median_income
      t.integer :unemployed_percent
      t.integer :metro_percent
      t.integer :hs_degree

      t.timestamps
    end
  end
end
