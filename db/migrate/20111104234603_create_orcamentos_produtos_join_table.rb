class CreateOrcamentosProdutosJoinTable < ActiveRecord::Migration
  def self.up
    create_table :orcamentos_produtos, :id => false do |t|
      t.integer :orcamento_id
      t.integer :produto_id
    end
  end

  def self.down
    drop_table :orcamentos_produtos
  end
end
