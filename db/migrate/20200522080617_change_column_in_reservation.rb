class ChangeColumnInReservation < ActiveRecord::Migration[6.0]
  def change
    change_column :reservations, :description, :text
  end
end
