json.array!(@reos) do |reo|
  json.extract! reo, :id, :rut, :nombre, :apellido, :direccion, :fono, :correo, :recinto_id
  json.url reo_url(reo, format: :json)
end
