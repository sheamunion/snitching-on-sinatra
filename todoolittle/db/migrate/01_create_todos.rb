class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
    end
  end
end