class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :time
      t.string :thing

      t.timestamps null: false
    end
  end
end
