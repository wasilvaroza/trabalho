class CreateRecrutadors < ActiveRecord::Migration
  def change
    create_table :recrutadors do |t|
      t.integer :Id_Recrutador
      t.integer :Id_Pessoa
      t.string :empresa

      t.timestamps null: false
    end
  end
end
