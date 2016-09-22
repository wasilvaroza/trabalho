class CreateVagas < ActiveRecord::Migration
  def change
    create_table :vagas do |t|
      t.integer :Id_Vaga
      t.integer :Id_Recrutador
      t.string :cargo
      t.float :salario
      t.time :cargaHoraria
      t.string :email
      t.string :telefone

      t.timestamps null: false
    end
  end
end
