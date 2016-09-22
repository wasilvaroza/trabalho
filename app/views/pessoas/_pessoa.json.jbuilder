json.extract! pessoa, :id, :Id_Pessoa, :nome, :cpf, :email, :telefone, :dataNasc, :login, :senha, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)