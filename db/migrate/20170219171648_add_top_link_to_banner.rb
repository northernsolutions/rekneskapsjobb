class AddTopLinkToBanner < ActiveRecord::Migration[5.0]
  def change
    add_column :banners, :top_link, :string
  end
end
