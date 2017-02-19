class AddAttachmentLowToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|
      t.attachment :low
    end
  end

  def self.down
    remove_attachment :banners, :low
  end
end
