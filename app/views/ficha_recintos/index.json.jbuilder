json.array!(@ficha_recintos) do |ficha_recinto|
  json.extract! ficha_recinto, :id, :ficha_ingreso_id, :reo_id, :observaciones
  json.url ficha_recinto_url(ficha_recinto, format: :json)
end
