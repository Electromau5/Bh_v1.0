class CreateSportpins < ActiveRecord::Migration
  
  def change
  	drop_table:sportpins
    create_table :sportpins do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
