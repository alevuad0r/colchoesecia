class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :cod_produto
      t.string :nome
      t.string :tamanho
      t.float :preco
      t.text :descricao

      t.timestamps
    end
  end
end
