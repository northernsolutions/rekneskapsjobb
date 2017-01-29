class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      t.boolean :profile, :null => false, :default => false
      t.string :name
      t.text :summary
      t.text :about
      t.text :vision
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :youtube
      t.string :instagram

      t.timestamps
    end
  end
end
