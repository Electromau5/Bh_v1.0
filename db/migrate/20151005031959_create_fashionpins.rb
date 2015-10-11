class CreateFashionpins < ActiveRecord::Migration
  def change
  	drop_table:fashionpins
    create_table :fashionpins do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
