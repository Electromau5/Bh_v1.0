class CreateTravelpins < ActiveRecord::Migration
  def change
    create_table :travelpins do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
