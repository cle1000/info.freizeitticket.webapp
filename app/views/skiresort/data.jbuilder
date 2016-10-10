json.array!(@skiresorts) do |resort|
  json.name resort.name
  json.id resort.id
  json.homepage resort.homepage
  json.webcams resort.webcams do |webcam|
    json.name webcam.name
    json.height webcam.height
    json.image_name webcam.id
    json.src webcam.src
    json.img_thumb webcam.img_thumb
    json.img webcam.img
    json.wide webcam.wide
  end
end
