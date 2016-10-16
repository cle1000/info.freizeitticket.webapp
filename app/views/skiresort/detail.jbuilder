json.name @resort.name
json.homepage @resort.homepage

json.webcams @resort.webcams do |webcam|
    json.name webcam.name
    json.height webcam.height
    json.src webcam.src
    json.img webcam.img
    json.wide webcam.wide
end