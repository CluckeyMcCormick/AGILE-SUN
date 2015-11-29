class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :name
      t.integer :talent_type #enum

      t.timestamps null: false
    end
  end
end
