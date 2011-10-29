class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :login
      t.string :senha
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
