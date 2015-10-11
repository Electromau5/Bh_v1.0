class AddAttachmentImageToFashionpins < ActiveRecord::Migration
  def self.up
    change_table :fashionpins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :fashionpins, :image
  end
end
