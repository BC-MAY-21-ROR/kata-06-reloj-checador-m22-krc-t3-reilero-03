class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.timestamp :check_in
      t.timestamp :check_out
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
