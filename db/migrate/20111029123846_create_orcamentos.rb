class CreateOrcamentos < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.integer :usuario_id
      t.date :data
      t.float :valor_total
      t.integer :produto_id
      t.integer :cliente_id

      t.timestamps
    end
  end
end
