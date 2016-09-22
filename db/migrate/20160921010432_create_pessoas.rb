class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.integer :Id_Pessoa
      t.string :nome
      t.string :cpf
      t.string :email
      t.string :telefone
      t.date :dataNasc
      t.string :login
      t.string :senha

      t.timestamps null: false
    end
  end
end
