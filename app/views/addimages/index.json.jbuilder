json.array!(@addimages) do |addimage|
  json.extract! addimage, :id, :url
  json.url addimage_url(addimage, format: :json)
end
