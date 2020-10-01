class CreateDia < ActiveRecord::Migration
  def change
    create_table :dia do |t|
      t.date :data

      t.timestamps null: false
    end
  end
end
