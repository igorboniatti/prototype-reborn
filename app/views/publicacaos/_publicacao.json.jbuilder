json.extract! publicacao, :id, :titulo, :data, :conteudo, :created_at, :updated_at
json.url publicacao_url(publicacao, format: :json)
