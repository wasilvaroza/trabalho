class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|
      t.integer :Id_Candidato
      t.integer :Id_Pessoa
      t.string :foto
      t.string :formacao

      t.timestamps null: false
    end
  end
end
