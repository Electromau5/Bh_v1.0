class AddAttachmentImageToSportpins < ActiveRecord::Migration
  def self.up
    change_table :sportpins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :sportpins, :image
  end
end
