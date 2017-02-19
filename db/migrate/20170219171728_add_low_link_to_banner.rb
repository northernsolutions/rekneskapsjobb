class AddLowLinkToBanner < ActiveRecord::Migration[5.0]
  def change
    add_column :banners, :low_link, :string
  end
end
