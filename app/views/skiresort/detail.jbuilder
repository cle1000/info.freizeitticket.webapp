json.name @resort.name
json.homepage @resort.homepage
json.weather @resort.weather
json.avalanche_level @resort.avalanche_level

json.webcams @resort.webcams.where(error: false).order(:height) do |webcam|
    json.name webcam.name
    json.height webcam.height
    json.src webcam.src
    json.img webcam.img
    json.wide webcam.wide
end

if !@snowreports.empty?
    json.snowreports @snowreports do |sr|
        json.snow_text sr.snow_text
        json.source_name sr.source_name
        json.link_text sr.link_text
        json.source sr.source
        json.date sr.date
        json.content_text sr.content_text
    end
end