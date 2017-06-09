class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :description
      t.references :departament, index: true, foreign_key: true
      t.timestamps

      
    end
  end
end
