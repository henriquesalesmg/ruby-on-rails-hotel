class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.string :nome
      t.string :celular
      t.string :wpp
      t.string :telefone
      t.string :email
      t.integer :quantidade
      t.date :chekin
      t.date :checkout

      t.timestamps null: false
    end
  end
end
