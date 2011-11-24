class CreateOrcamentos < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.float :valor_total
      t.integer :usuario_id

      t.timestamps
    end
  end
end
