class CreatePhonepins < ActiveRecord::Migration
  def change
    create_table :phonepins do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
