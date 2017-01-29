class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.boolean :exclusive, :null => false, :default => false
      t.string :title
      t.text :content
      t.string :location
      t.date :date
      t.text :apply
      t.references :employer, foreign_key: true
      t.references :category, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
