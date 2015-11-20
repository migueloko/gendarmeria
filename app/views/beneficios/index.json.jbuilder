json.array!(@beneficios) do |beneficio|
  json.extract! beneficio, :id, :codigo, :merito_a, :desde, :hasta, :reo_id
  json.url beneficio_url(beneficio, format: :json)
end
