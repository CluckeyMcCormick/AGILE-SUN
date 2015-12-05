class CreateRatedTalents < ActiveRecord::Migration
  def change
    create_table :rated_talents do |t|
    	t.references :user
    	t.references :talent
    	t.integer :rating_value

      	t.timestamps null: false
    end
    add_index :rated_talents, ["user_id", "talent_id"]
  end
end
