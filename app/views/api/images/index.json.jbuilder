json.images @images do |image|
  json.image_url attachment_url(image, :photo)
end
