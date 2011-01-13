class CreateProdutos < ActiveRecord::Migration
  def self.up
    create_table :produtos do |t|
      t.string :nome
      t.decimal :preco
      t.text :descricao
      t.string :status
      t.integer :quantidade
      t.string :dono
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :produtos
  end
end
