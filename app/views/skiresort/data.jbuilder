json.array!(@skiresorts) do |resort|
  json.name resort.name
  json.id resort.id
  json.temperatur resort.temperatur
  json.avalanche_level resort.avalanche_level
  if !resort.snow_report.time.nil?
    json.snow do
      json.text resort.snow_report.text
      json.source resort.snow_report.source
      json.link resort.snow_report.link
    end
  end
  json.webcams resort.webcams.shuffle.take(3) do |webcam|
    json.name webcam.name
    json.height webcam.height
    json.image_name webcam.id
    json.src webcam.src
    json.img_thumb webcam.img_thumb
    json.img webcam.img
    json.wide webcam.wide
  end
end
