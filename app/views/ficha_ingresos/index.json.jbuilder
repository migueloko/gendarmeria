json.array!(@ficha_ingresos) do |ficha_ingreso|
  json.extract! ficha_ingreso, :id, :codigo_ficha, :fecha_ingreso, :ubicacion, :condena
  json.url ficha_ingreso_url(ficha_ingreso, format: :json)
end
