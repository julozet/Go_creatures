class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :starting_date
      t.date :ending_date
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :creature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
