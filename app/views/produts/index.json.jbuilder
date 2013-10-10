json.array!(@produts) do |produt|
  json.extract! produt, :name, :price
  json.url produt_url(produt, format: :json)
end
