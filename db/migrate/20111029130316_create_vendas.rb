class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.integer :cliente_id
      t.integer :usuario_id
      t.integer :produto_id
      t.float :valor_da_venda

      t.timestamps
    end
  end
end
