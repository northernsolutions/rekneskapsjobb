class AddMiddleLinkToBanner < ActiveRecord::Migration[5.0]
  def change
    add_column :banners, :middle_link, :string
  end
end
