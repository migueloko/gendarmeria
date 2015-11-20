json.array!(@recintos) do |recinto|
  json.extract! recinto, :id, :codigo, :nombre, :ubicacion, :cantidad_reo
  json.url recinto_url(recinto, format: :json)
end
