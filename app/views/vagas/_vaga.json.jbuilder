json.extract! vaga, :id, :Id_Vaga, :Id_Recrutador, :cargo, :salario, :cargaHoraria, :email, :telefone, :created_at, :updated_at
json.url vaga_url(vaga, format: :json)