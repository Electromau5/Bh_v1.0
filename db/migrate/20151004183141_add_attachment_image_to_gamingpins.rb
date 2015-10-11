class AddAttachmentImageToGamingpins < ActiveRecord::Migration
  def self.up
    change_table :gamingpins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :gamingpins, :image
  end
end
