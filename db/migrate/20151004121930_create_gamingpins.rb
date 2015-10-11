class CreateGamingpins < ActiveRecord::Migration
  def change
    create_table :gamingpins do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
