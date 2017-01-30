class AddSummaryToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :summary, :text
  end
end
