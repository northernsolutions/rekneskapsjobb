class AddPublishedAtToEmployer < ActiveRecord::Migration[5.0]
  def change
    add_column :employers, :published_at, :datetime
  end
end
