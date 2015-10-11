class AddAttachmentImageToArtpins < ActiveRecord::Migration
  def self.up
    change_table :artpins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :artpins, :image
  end
end
