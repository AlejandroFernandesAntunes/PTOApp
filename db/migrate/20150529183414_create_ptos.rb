class CreatePtos < ActiveRecord::Migration
  def change
    create_table :ptos do |t|
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
