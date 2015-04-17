class AddThingToHome < ActiveRecord::Migration
  def change
  	add_column :home, :thing :string
  end
end
