class AddAttachmentTopToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :top
    end
  end

  def self.down
    remove_attachment :banners, :top
  end
end
