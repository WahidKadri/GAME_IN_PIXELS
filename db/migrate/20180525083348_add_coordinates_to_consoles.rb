class AddCoordinatesToConsoles < ActiveRecord::Migration[5.2]
  def change
    add_column :consoles, :latitude, :float
    add_column :consoles, :longitude, :float
  end
end
