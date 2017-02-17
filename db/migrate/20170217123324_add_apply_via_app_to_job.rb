class AddApplyViaAppToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :apply_via_app, :boolean
  end
end
