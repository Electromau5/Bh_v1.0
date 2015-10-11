class AddAttachmentImageToPhonepins < ActiveRecord::Migration
  def self.up
    change_table :phonepins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :phonepins, :image
  end
end
