class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :status
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
