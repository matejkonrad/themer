class CreateLandings < ActiveRecord::Migration[5.1]
  def change
    create_table :landings do |t|
      t.integer :user_id
      t.string :name
      t.string :domain_name
      t.text :landing_code

      t.timestamps
    end
    add_index :landings, :user_id
  end
end
