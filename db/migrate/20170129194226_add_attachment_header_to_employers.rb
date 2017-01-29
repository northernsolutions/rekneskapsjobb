class AddAttachmentHeaderToEmployers < ActiveRecord::Migration
  def self.up
    change_table :employers do |t|
      t.attachment :header
    end
  end

  def self.down
    remove_attachment :employers, :header
  end
end
