class AddAttachmentMiddleToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :middle
    end
  end

  def self.down
    remove_attachment :banners, :middle
  end
end
