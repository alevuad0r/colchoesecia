class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.integer :cliente_id
      t.string :produtos
      t.integer :usuario_id
      t.float :valor_da_venda

      t.timestamps
    end
  end
end
