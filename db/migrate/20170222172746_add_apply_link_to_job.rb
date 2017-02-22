class AddApplyLinkToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :apply_link, :string
  end
end
