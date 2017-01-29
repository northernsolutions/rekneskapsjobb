class AddAttachmentLeftToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :left
    end
  end

  def self.down
    remove_attachment :banners, :left
  end
end
