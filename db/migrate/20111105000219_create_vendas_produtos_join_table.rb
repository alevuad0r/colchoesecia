class CreateVendasProdutosJoinTable < ActiveRecord::Migration
  def self.up
    create_table :vendas_produtos, :id => false do |t|
      t.integer :venda_id
      t.integer :produto_id
    end
  end

  def self.down
    drop_table :vendas_produtos
  end
end
