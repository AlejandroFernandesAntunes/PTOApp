class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :rate
      t.text :body
      t.string :description

      t.belongs_to :pto, index: true
      t.timestamps
    end
  end
end
