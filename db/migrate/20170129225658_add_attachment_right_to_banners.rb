class AddAttachmentRightToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :right
    end
  end

  def self.down
    remove_attachment :banners, :right
  end
end
