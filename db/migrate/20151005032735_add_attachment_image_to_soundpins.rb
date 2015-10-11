class AddAttachmentImageToSoundpins < ActiveRecord::Migration
  def self.up
    change_table :soundpins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :soundpins, :image
  end
end
