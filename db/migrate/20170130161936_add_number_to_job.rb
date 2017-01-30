class AddNumberToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :number, :integer
  end
end
