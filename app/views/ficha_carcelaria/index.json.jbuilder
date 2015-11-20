json.array!(@ficha_carcelaria) do |ficha_carcelarium|
  json.extract! ficha_carcelarium, :id, :codigo_ficha_ingreso, :fecha_ingreso_date, :rut_reo, :reo_id, :ficha_ingreso__id
  json.url ficha_carcelarium_url(ficha_carcelarium, format: :json)
end
