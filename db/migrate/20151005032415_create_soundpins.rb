class CreateSoundpins < ActiveRecord::Migration
  def change
    create_table :soundpins do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
