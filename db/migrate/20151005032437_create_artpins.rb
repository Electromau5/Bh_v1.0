class CreateArtpins < ActiveRecord::Migration
  def change
    create_table :artpins do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
