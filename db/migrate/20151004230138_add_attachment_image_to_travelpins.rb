class AddAttachmentImageToTravelpins < ActiveRecord::Migration
  def self.up
    change_table :travelpins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :travelpins, :image
  end
end
