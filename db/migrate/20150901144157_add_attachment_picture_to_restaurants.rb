class AddAttachmentPictureToRestaurants < ActiveRecord::Migration
  def self.up
    change_table :restaurants do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :restaurants, :picture
  end
end
