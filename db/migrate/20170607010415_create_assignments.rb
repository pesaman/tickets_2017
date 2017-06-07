class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :status
      t.string :description
      t.references :user, index: true, foreign_key: true
      t.belongs_to :ticket, index: true
      t.timestamps
    end
  end
end
