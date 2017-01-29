class AddAttachmentLogoToEmployers < ActiveRecord::Migration
  def self.up
    change_table :employers do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :employers, :logo
  end
end
