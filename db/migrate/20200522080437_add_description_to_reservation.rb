class AddDescriptionToReservation < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :description, :string
  end
end
