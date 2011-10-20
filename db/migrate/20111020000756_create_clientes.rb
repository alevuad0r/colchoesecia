class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome, :limit => 80
      t.string :cpf, :limit => 11
      t.string :identidade, :limit => 12
      t.string :email, :limit => 120
      t.string :telefone, :limit => 14
      t.timestamps
    end
  end
end
