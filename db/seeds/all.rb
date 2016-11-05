Avalanche.create!([
  {time: "2016-04-29 05:30:00", author: "Patrick Nairz", comment: "Weitere Informationen zur Situation finden Sie v.a. in unserem Blog: lawine.tirol -> Blog\r\nHerzlichen Dank für wertvolle Rückmeldungen während der vergangenen Wintersaison!", highlight: "Einstellung der täglichen Berichterstattung am 29.04.2016 - zunehmend Frühjahrsverhältnisse", synopsis_comment: "Allgemeine Wetterlage: Die Höhenströmung dreht auf Westen und am Samstag auf Südwest. Damit gelangt trockenere und mildere Luft in den Alpenraum. Am Sonntag ist mit einer Tiefdruckentwicklung im westlichen Mittelmeer zu rechnen und damit mit einer Wetterverschlechterung auch in den Alpen. \r\nBergwetter heute: Auf den Bergen Nordtirols gutsichtiges und sonnig-heiteres Wetter mit lockerer Quellbewölkung nachmittags. Über Süd- und Osttirol teils Hochnebelschichten bis ca. 2000m hinauf, aber auch darüber wolkig. Aber auch südlich des Hauptkammes stellt sich ein freundlicher Mix aus Sonne und Quellwolken ein. Temperatur in 2000m: -4 auf +1 Grad , in 3000m: -11 auf -7 Grad. Schwacher Höhenwind.", snowpack_structure_comment: "Die Schneedecke konnte sich aufgrund der gestrigen Strahlung trotz der winterlichen Temperaturen etwas setzen und stabilisieren. Dies trifft somit auch auf die bis vorgestern gebildeten Triebschneepakete zu, die nur mehr in hochalpinem, sehr steilen Gelände zu stören sein sollten. Als Schwachschicht dient noch lockerer Pulverschnee, der von Triebschnee überlagert ist. In Oberflächennähe findet man zudem auch dünnere Graupelschichten, vereinzelt auch beginnende aufbauende Umwandlung oberhalb der Saharastaubschicht. Schneedeckenuntersuchungen weisen derzeit jedoch nicht auf eine erhöhte Störanfälligkeit dieser Schichten hin. Zudem kann man davon ausgehen, dass sich oberflächennahe Schneeschichten weiter verbinden werden.", travel_advisary_comment: "Nach einer hochwinterlichen Phase meldet sich das Frühjahr zurück. Die Lawinengefahr unterliegt somit wieder einem Tagesgang. Nach einer sternenklaren Nacht herrscht am Vormittag unterhalb etwa 2800m geringe Gefahr, darüber ist diese mäßig. Während des Tages steigt die Gefahr dann oberhalb der Waldgrenze allgemein auf mäßig an.\r\nDerzeit ist auf zwei mögliche Probleme zu achten: Hochalpin findet man noch kürzlich gebildete Triebschneepakete, die man v.a. im sehr steilen, kammnahen, vorwiegend von NW über N bis O gerichtetem Gelände auslösen kann. Meist benötigt man dazu inzwischen schon große Zusatzbelastung. \r\nZusätzlich sollte man darauf achten, dass die Schneedecke während des Tages durch die Sonneneinstrahlung und die steigenden Temperaturen durchfeuchtet wird. Der Neuschnee der vergangenen Tage verliert dadurch an Festigkeit. Aus extrem steilen, besonnten Hängen wird man deshalb ab etwa den Mittagsstunden mit vermehrten Lockerschneerutschen und kleinen Lockerschneelawinen rechnen müssen."}
])
AvalancheRegion.create!([
  {avalanche_id: 1, region: 1, am: true, over_1800: true, danger_rate: 2},
  {avalanche_id: 1, region: 1, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 1, am: true, over_1800: false, danger_rate: 3},
  {avalanche_id: 1, region: 1, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 2, am: true, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 2, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 2, am: true, over_1800: false, danger_rate: 4},
  {avalanche_id: 1, region: 2, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 3, am: true, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 3, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 3, am: true, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 3, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 4, am: true, over_1800: true, danger_rate: 2},
  {avalanche_id: 1, region: 4, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 4, am: true, over_1800: false, danger_rate: 2},
  {avalanche_id: 1, region: 4, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 5, am: true, over_1800: true, danger_rate: 3},
  {avalanche_id: 1, region: 5, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 5, am: true, over_1800: false, danger_rate: 2},
  {avalanche_id: 1, region: 5, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 6, am: true, over_1800: true, danger_rate: 2},
  {avalanche_id: 1, region: 6, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 6, am: true, over_1800: false, danger_rate: 2},
  {avalanche_id: 1, region: 6, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 7, am: true, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 7, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 7, am: true, over_1800: false, danger_rate: 4},
  {avalanche_id: 1, region: 7, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 8, am: true, over_1800: true, danger_rate: 2},
  {avalanche_id: 1, region: 8, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 8, am: true, over_1800: false, danger_rate: 2},
  {avalanche_id: 1, region: 8, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 9, am: true, over_1800: true, danger_rate: 2},
  {avalanche_id: 1, region: 9, am: false, over_1800: true, danger_rate: 3},
  {avalanche_id: 1, region: 9, am: true, over_1800: false, danger_rate: 2},
  {avalanche_id: 1, region: 9, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 10, am: true, over_1800: true, danger_rate: 2},
  {avalanche_id: 1, region: 10, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 10, am: true, over_1800: false, danger_rate: 2},
  {avalanche_id: 1, region: 10, am: false, over_1800: false, danger_rate: 2},
  {avalanche_id: 1, region: 11, am: true, over_1800: true, danger_rate: 5},
  {avalanche_id: 1, region: 11, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 11, am: true, over_1800: false, danger_rate: 2},
  {avalanche_id: 1, region: 11, am: false, over_1800: false, danger_rate: 1},
  {avalanche_id: 1, region: 12, am: true, over_1800: true, danger_rate: 2},
  {avalanche_id: 1, region: 12, am: false, over_1800: true, danger_rate: 1},
  {avalanche_id: 1, region: 12, am: true, over_1800: false, danger_rate: 2},
  {avalanche_id: 1, region: 12, am: false, over_1800: false, danger_rate: 1}
])
Skiresort.create!([
  {name: "Nordkette", twitter: "nordketteibk", facebook: "nordkette", bergfex: "innsbruck-nordkette", snow_page: "", homepage: "http://www.nordkette.com/", avalanche_region: "2", weather: "nordpark-seegrube", temperatur: "8°C"}
])
Skiresort.create!([
  {name: "Stubaier Gletscher", twitter: "stubaigletscher", facebook: "schifahren.stubaiergletscher", bergfex: "stubaier-gletscher", snow_page: "https://www.stubaier-gletscher.com", homepage: "https://www.stubaier-gletscher.com", avalanche_region: "8", weather: "stubaier-gletscher", temperatur: "2°C"},
])
Skiresort.create!([  
  {name: "Patscherkofel", twitter: nil, facebook: "snowparkinnsbruck", bergfex: "innsbruck-igls-patscherkofel", snow_page: nil, homepage: "http://www.patscherkofelbahnen.at/", avalanche_region: "6", weather: "patscherkofel", temperatur: "7°C"},
])
Skiresort.create!([
  {name: "Axamer Lizum", twitter: "axamerlizum", facebook: "axamerlizum", bergfex: "axamer-lizum", snow_page: "http://www.axamer-lizum.at/de/winter/aktueller-schneebericht-pistenverhaeltnisse.html", homepage: "http://www.axamer-lizum.at", avalanche_region: "5", weather: "axamer-lizum", temperatur: "8°C"},
])
Skiresort.create!([
  {name: "Schlick 2000", twitter: nil, facebook: "Schlick.2000.Schizentrum.AG", bergfex: "schlick", snow_page: "http://www.stubai.at/skigebiete/schlick2000/skigebiet/", homepage: "http://www.schlick2000.at/", avalanche_region: "5", weather: "skizentrum-schlick-2000", temperatur: "9°C"},
])
Skiresort.create!([
  {name: "Kühtai", twitter: "kuhtai", facebook: "kuehtai", bergfex: "kuehtai", snow_page: "http://www.kuehtai.info/winter/skigebiet/schneebericht.html", homepage: "http://www.kuehtai.info/", avalanche_region: "5", weather: "kuehtai", temperatur: "4°C"},
])
Skiresort.create!([
  {name: "Glungezer", twitter: "glungezer", facebook: "glungezer", bergfex: "", snow_page: "", homepage: "http://www.glungezerbahn.at/", avalanche_region: "6", weather: "glungezer", temperatur: "7°C"},
])
Skiresort.create!([
  {name: "Muttereralm", twitter: nil, facebook: "Muttereralm.Tirol", bergfex: "muttereralm", snow_page: nil, homepage: "http://www.muttereralm.at/", avalanche_region: "5", weather: "muttereralm", temperatur: "11°C"},
])
Skiresort.create!([
  {name: "Elfer Lifte", twitter: nil, facebook: "Elferlifte", bergfex: "stubaital-neustift", snow_page: "http://www.elfer.at", homepage: "http://www.elfer.at", avalanche_region: "5", weather: "elferlifte", temperatur: "11°C"},
])
Skiresort.create!([
  {name: "Bergeralm", twitter: nil, facebook: "243074665809719", bergfex: "bergeralm", snow_page: nil, homepage: "http://www.bergeralm.net", avalanche_region: "8", weather: "ski-und-freizeit-arena-bergeralm", temperatur: "11°C"},
])
Skiresort.create!([
  {name: "Bergbahnen Kappl", twitter: "kappl_insider", facebook: "kappl.tirol", bergfex: "kappl", snow_page: "http://www.kappl.com/en/info/snowreport", homepage: "http://www.kappl.com", avalanche_region: "1", weather: "bergbahnen-kappl", temperatur: "5°C"},
])
Skiresort.create!([
  {name: "Obergurgl", twitter: "obergurglcom", facebook: "obergurgl", bergfex: "obergurgl-hochgurgl", snow_page: "http://www.obergurgl.com/wintersportbericht", homepage: "http://www.obergurgl.com", avalanche_region: "8", weather: "obergurgl-hochgurgl", temperatur: "2°C"},
])
Skiresort.create!([
  {name: "St Anton", twitter: "stantonreview", facebook: "Stanton.Arlberg", bergfex: "stanton-stchristoph", snow_page: nil, homepage: "http://www.stantonamarlberg.com/winter", avalanche_region: "1", weather: "st-anton-am-arlberg", temperatur: "3°C"},
])
Skiresort.create!([
  {name: "Lech Zürs", twitter: "lech_zuers", facebook: "lechzuers", bergfex: "lech-zuers-arlberg", snow_page: nil, homepage: "http://www.lech-zuers.at", avalanche_region: "1", weather: "lech-zuers", temperatur: "8°C"},
])
Skiresort.create!([
  {name: "Seefeld - Rosshütte", twitter: nil, facebook: "rosshuette", bergfex: "seefeld-rosshuette", snow_page: "", homepage: "http://www.rosshuette.at/", avalanche_region: "2", weather: "rosshuette", temperatur: "9°C"},
])
Skiresort.create!([
  {name: "Galtür", twitter: "galtuer_insider", facebook: "galtuer.paznaun", bergfex: "galtuer", snow_page: "http://www.galtuer.com/en/info/snow-report", homepage: "http://www.galtuer.com", avalanche_region: "4", weather: "silvretta-galtuer", temperatur: "8°C"},
])
Skiresort.create!([
  {name: "Kellerjoch", twitter: nil, facebook: "Kellerjochbahn", bergfex: "kellerjoch", snow_page: nil, homepage: "http://www.kellerjochbahn.at", avalanche_region: "6", weather: "kellerjoch", temperatur: "10°C"},
])
Skiresort.create!([
  {name: "Ischgl", twitter: "ischgl_insider", facebook: "paznaun.ischgl", bergfex: "ischgl", snow_page: "http://www.ischgl.com/en/more/snow-report", homepage: "http://www.ischgl.com/", avalanche_region: "4", weather: "silvretta-arena-ischgl-samnaun", temperatur: "4°C"},
])
Skiresort.create!([
  {name: "Hochkössen", twitter: nil, facebook: "143386325725577", bergfex: "koessen", snow_page: nil, homepage: "http://www.bergbahnen-koessen.at", avalanche_region: "3", weather: "hochkoessen", temperatur: nil},
])
Skiresort.create!([
  {name: "Serlesbahn Mieders", twitter: nil, facebook: "254121311278578", bergfex: "mieders", snow_page: nil, homepage: "http://www.serlesbahnen.com", avalanche_region: "4", weather: "serles", temperatur: "12°C"},
])
Skiresort.create!([
  {name: "Rangger Köpfl", twitter: nil, facebook: nil, bergfex: "ranggerkoepfl", snow_page: nil, homepage: "http://www.rangger-koepfl.at/", avalanche_region: "5", weather: nil, temperatur: nil},
])
Skiresort.create!([
  {name: "Sonnenberglift Gries", twitter: nil, facebook: nil, bergfex: "sonnenberglift-gries-im-sellrain", snow_page: nil, homepage: "http://www.sonnenberglift.at/", avalanche_region: "5", weather: nil, temperatur: nil},
])
Skiresort.create!([
  {name: "Leutasch", twitter: nil, facebook: nil, bergfex: "hochmoos-kreithlift-leutasch", snow_page: nil, homepage: "http://www.hochmoos-tirol.com/", avalanche_region: "2", weather: "leutasch-kreithlifte", temperatur: "11°C"},
])
Skiresort.create!([
  {name: "Hüttegglift", twitter: nil, facebook: "huettegglift", bergfex: "huettegglift", snow_page: nil, homepage: "http://www.huettegglift.at/", avalanche_region: "6", weather: nil, temperatur: nil}
])
SnowReport.create!([
  {skiresort_id: 15, time: "2016-10-12 12:42:32", snow_height: nil, powder_alert: true, source: "facebook", link: "https://www.facebook.com/rosshuette/posts/574205896102551", html: nil, push: nil},
  {skiresort_id: 15, time: "2016-10-03 09:00:50", snow_height: nil, powder_alert: true, source: "facebook", link: "https://www.facebook.com/rosshuette/posts/569109189945555", html: nil, push: nil},
  {skiresort_id: 2, time: "2016-10-10 10:53:39", snow_height: 25, powder_alert: nil, source: "facebook", link: "https://www.facebook.com/schifahren.stubaiergletscher/posts/10154111219027753", html: nil, push: nil},
  {skiresort_id: 6, time: "2016-10-15 05:30:00", snow_height: 5, powder_alert: nil, source: "homepage", link: nil, html: nil, push: nil},
  {skiresort_id: 2, time: "2016-10-18 06:07:00", snow_height: 15, powder_alert: nil, source: "bergfex", link: "http://www.bergfex.at/stubaier-gletscher/schneebericht/", html: nil, push: nil},
  {skiresort_id: 2, time: "2016-10-31 06:14:00", snow_height: 5, powder_alert: nil, source: "homepage", link: "http://www.bergfex.at/stubaier-gletscher/schneebericht/", html: nil, push: nil},
  {skiresort_id: 15, time: "2016-10-12 10:42:32", snow_height: nil, powder_alert: true, source: "facebook", link: "https://www.facebook.com/rosshuette/posts/574205896102551", html: nil, push: nil},
  {skiresort_id: 2, time: "2016-10-12 10:42:32", snow_height: 10, powder_alert: nil, source: "twitter", link: "https://www.facebook.com/rosshuette/posts/574205896102551", html: nil, push: nil},
  {skiresort_id: 9, time: "2016-10-31 06:14:00", snow_height: 12, powder_alert: nil, source: nil, link: nil, html: nil, push: nil},
  {skiresort_id: 4, time: "2016-10-31 06:14:00", snow_height: 5, powder_alert: nil, source: nil, link: nil, html: nil, push: nil},
  {skiresort_id: 1, time: "2016-10-31 06:14:00", snow_height: 3, powder_alert: nil, source: nil, link: nil, html: nil, push: nil},
  {skiresort_id: 11, time: "2016-10-31 06:14:00", snow_height: 15, powder_alert: nil, source: nil, link: nil, html: nil, push: nil}
])
Webcam.create!([
  {skiresort_id: 1, name: "Seegrube", feratel_id: 5645, height: 1905, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5645.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 1, name: "Seegrube", feratel_id: nil, height: 1905, wms: nil, image: "https://apps.tirol.gv.at/luft/nordkette.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 1, name: "Hafelekar", feratel_id: 5647, height: 2256, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5647.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 1, name: "Hungerburg", feratel_id: 5646, height: 870, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5646.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 2, name: "Daunjoch", feratel_id: 5711, height: 3015, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5711.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 2, name: "Eisgrat", feratel_id: 5710, height: 2900, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5710.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 2, name: "Gamsgarten", feratel_id: nil, height: 2626, wms: "stubaier-gletscher", image: "http://stubaier-gletscher.it-wms.com/panorama1_raw.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: true, error: false},
  {skiresort_id: 2, name: "Snowpark", feratel_id: nil, height: 2460, wms: "stubaier-gletscher-snowpark", image: "http://stubaier-gletscher-snowpark.it-wms.com/panorama1_raw.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: true, error: false},
  {skiresort_id: 2, name: "Schaufeljoch", feratel_id: nil, height: 3155, wms: "stubaier-gletscher-schaufeljoch", image: "http://stubaier-gletscher-schaufeljoch.it-wms.com/panorama1_raw.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: true, error: false},
  {skiresort_id: 3, name: "ÖAV Schutzhaus", feratel_id: nil, height: 1970, wms: nil, image: "https://apps.tirol.gv.at/luft/patscherkofel.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 4, name: "Hoadl-Haus", feratel_id: 5510, height: 2340, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5510.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 4, name: "Lizumerhof", feratel_id: nil, height: 1580, wms: nil, image: "http://www2.lizumerhof.at/live/lizumerhof-live.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 5, name: "Krinnenkopf", feratel_id: 5670, height: 2100, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5670.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 5, name: "Froneben Kinderland", feratel_id: 25670, height: 1345, wms: nil, image: "http://wtvpict.feratel.com/picture/42/25670.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 6, name: "Hochalterbahn", feratel_id: nil, height: 2500, wms: nil, image: "http://www.kuehtai.info/hohemut_800x600.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 6, name: "Startbahn", feratel_id: nil, height: 2020, wms: nil, image: "http://www.kuehtai.info/livecam2_800x600.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 6, name: "Graf Ferdinand Haus", feratel_id: nil, height: 2150, wms: nil, image: "http://www.kuehtai.info/rodelhuette_800x600.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 6, name: "Mittergrathütte", feratel_id: nil, height: 2000, wms: nil, image: "http://www.mittergrat.at/mittergrathuette_800x600.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 6, name: "Weltcuphang", feratel_id: nil, height: 2110, wms: nil, image: "http://www.kuehtai.info/webcam1_thumb_original.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 6, name: "Kühtai", feratel_id: nil, height: 2110, wms: nil, image: "http://www.kuehtai.info/webcam2_thumb_original.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 6, name: "Kühtaier Schlössl", feratel_id: nil, height: 1950, wms: nil, image: "http://www.kuehtai.at/static/webcam/live.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 7, name: "Glungezergimpfel", feratel_id: nil, height: 2677, wms: nil, image: "http://www.mdw.ag/camglungezer/glungezer_talblick.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 7, name: "Bergblick", feratel_id: nil, height: 595, wms: nil, image: "http://www.mdw.ag/camglungezer/glungezer_bergblick.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 7, name: "Mittelstation Halsmarter", feratel_id: 5659, height: 1560, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5659.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 8, name: "Bergstation", feratel_id: nil, height: 1602, wms: nil, image: "http://www.muttereralm.at/images/webcam1/webcam1.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 8, name: "Pfriemesköpfl", feratel_id: nil, height: 1802, wms: nil, image: "http://www.muttereralm.at/images/webcam2/webcam2.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 9, name: "Panoramabahn", feratel_id: 5714, height: 1790, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5714.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 9, name: "Neustift", feratel_id: nil, height: 1000, wms: nil, image: "http://erika.at/fileadmin/user_upload/webcam/cam.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 9, name: "Blick auf Neustift", feratel_id: nil, height: 1040, wms: nil, image: "http://www.kratzerwirt.at/webcam/webcam/cam1.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 9, name: "Fulpmes", feratel_id: nil, height: 930, wms: nil, image: "http://www.amcs.at/lc/atzinger_lc.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 12, name: "Hohe Mut", feratel_id: 5650, height: 2670, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5650.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 12, name: "Gaisberg", feratel_id: 5652, height: 2005, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5652.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 12, name: "Hochgurgl", feratel_id: 5570, height: 2410, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5570.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 12, name: "Top Mountaion Crosspoint", feratel_id: 5571, height: 2165, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5571.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 13, name: "Galzig Berg", feratel_id: 5691, height: 2080, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5691.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 13, name: "Valluga", feratel_id: 5690, height: 2811, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5690.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 13, name: "Grampen", feratel_id: 5692, height: 1860, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5692.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 13, name: "Skicenter", feratel_id: 5693, height: 1320, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5693.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 13, name: "Rendl", feratel_id: 5694, height: 2025, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5694.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 13, name: "St. Christoph", feratel_id: 5695, height: 1770, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5695.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 13, name: "Nasserein", feratel_id: nil, height: 1292, wms: nil, image: "http://livecam.abbag.com/nasserein.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 13, name: "Kapall", feratel_id: nil, height: 2330, wms: nil, image: "http://livecam.abbag.com/kapall.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 13, name: "Arlberg Hospiz", feratel_id: nil, height: 1780, wms: nil, image: "https://www.arlberghospiz.at/tl_files/webcam/image2.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 14, name: "Flüchenlift", feratel_id: 5810, height: 1480, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5810.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 14, name: "Kriegerhorn", feratel_id: nil, height: 2090, wms: nil, image: "https://panodata2.panomax.com/cams/982/recent_optimized.jpg", panomax_area: "lech", panomax_webcam: nil, panomax_id: 982, wide: true, error: false},
  {skiresort_id: 14, name: "Oberlech", feratel_id: nil, height: 1671, wms: nil, image: "https://panodata2.panomax.com/cams/9/recent_optimized.jpg", panomax_area: "goldenerberg", panomax_webcam: nil, panomax_id: 9, wide: true, error: false},
  {skiresort_id: 14, name: "Kirche", feratel_id: nil, height: 1470, wms: nil, image: "http://www.pfarre-lech.at/web/live/pfarre-lech-live.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 14, name: "Omeshorn", feratel_id: nil, height: 1444, wms: nil, image: "http://www.rotewand.com/webcam/image_big.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 14, name: "Arlberghaus", feratel_id: nil, height: 1690, wms: nil, image: "http://www.arlberghaus.com/schneefall/P_1920.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 14, name: "Rud-Alpe", feratel_id: nil, height: 1560, wms: nil, image: "http://webcam.rud-alpe.com/rudalpe_live.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 14, name: "Hotel Schmelzhof", feratel_id: nil, height: 1450, wms: nil, image: "http://www.schmelzhof.com/webcam/image.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 10, name: "Steinboden", feratel_id: 5745, height: 1650, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5745.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 10, name: "Sattelbergalm", feratel_id: nil, height: 1633, wms: nil, image: "http://www.wipptal.net/webcam_gries3.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 15, name: "Bergrestaurant Rosshütte", feratel_id: nil, height: 1180, wms: nil, image: "https://panodata2.panomax.com/cams/368/recent_optimized.jpg", panomax_area: "seefeld", panomax_webcam: "rosshuette", panomax_id: 368, wide: true, error: false},
  {skiresort_id: 15, name: "Härmelekopf", feratel_id: nil, height: 2045, wms: nil, image: "https://panodata2.panomax.com/cams/357/recent_optimized.jpg", panomax_area: "seefeld", panomax_webcam: "haermelekopf", panomax_id: 357, wide: true, error: false},
  {skiresort_id: 15, name: "Dorfplatz", feratel_id: nil, height: 1180, wms: nil, image: "https://panodata2.panomax.com/cams/409/recent_optimized.jpg", panomax_area: "seefeld", panomax_webcam: "seefeld-dorfplatz", panomax_id: 409, wide: true, error: false},
  {skiresort_id: 15, name: "Seefeld", feratel_id: nil, height: 1210, wms: nil, image: "http://webcam.isser.com/ccam.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 15, name: "Hotel Habhof", feratel_id: nil, height: 1250, wms: nil, image: "http://panorama-cam.at/habhof/livecam//moesern.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 16, name: "Dorf", feratel_id: 5548, height: 1600, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5548.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 16, name: "Kopssee", feratel_id: 5549, height: 1850, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5549.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 16, name: "Ballunspitzbahn", feratel_id: 5550, height: 1950, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5550.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 16, name: "Hotel Luggi", feratel_id: nil, height: 1580, wms: nil, image: "http://www.luggi.at/cam/create_webcam.php", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 17, name: "Bergstation Kellerjochbahn", feratel_id: nil, height: 1887, wms: nil, image: "http://webcams.silberregion-karwendel.com/kellerjoch_VGA.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 17, name: "Schwaz/Kogelmoos", feratel_id: nil, height: 1118, wms: nil, image: "https://apps.tirol.gv.at/luft/schwaz_koglmoos.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 18, name: "Idalpe", feratel_id: 5575, height: 2320, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5575.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 18, name: "Pardatschgrat", feratel_id: 5576, height: 2583, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5576.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 18, name: "Ischgl Dorf", feratel_id: 25577, height: 1400, wms: nil, image: "http://wtvpict.feratel.com/picture/42/25577.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 18, name: "Palinkopf", feratel_id: nil, height: 2864, wms: nil, image: "https://panodata2.panomax.com/cams/101/recent_optimized.jpg", panomax_area: "palinkopf", panomax_webcam: nil, panomax_id: 101, wide: true, error: false},
  {skiresort_id: 18, name: "Greitspitze", feratel_id: nil, height: 2872, wms: nil, image: "http://tv.silvretta.at/webcam/mobotix_greitspitz.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 18, name: "Ischgl Ort", feratel_id: nil, height: 1400, wms: nil, image: "https://panodata2.panomax.com/cams/141/recent_optimized.jpg", panomax_area: "ischgl", panomax_webcam: nil, panomax_id: 141, wide: true, error: false},
  {skiresort_id: 18, name: "Silvrettabahn", feratel_id: nil, height: 1360, wms: nil, image: "http://file.oe24.at/mowis/webcams/670121/mowis-ischgl-t_01.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 18, name: "Alp Trida Sattel", feratel_id: nil, height: 2499, wms: nil, image: "http://www.swisswebcams.ch/mobotix/a32p.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 18, name: "Funpark Idalpe", feratel_id: nil, height: 2300, wms: nil, image: "http://tv.silvretta.at/webcam/funpark.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 18, name: "Paznauner Taja", feratel_id: nil, height: 1989, wms: nil, image: "http://www.paznauner-taja.at/Pano/taja.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 19, name: "Unterberghorn", feratel_id: 5610, height: 1773, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5610.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 19, name: "Kinderland", feratel_id: 5611, height: 620, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5611.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 20, name: "Bergstation Koppeneck", feratel_id: 25770, height: 1650, wms: nil, image: "http://wtvpict.feratel.com/picture/42/25770.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 11, name: "Diasbahn Bergstation", feratel_id: 5585, height: 1830, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5585.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 11, name: "Alblitt", feratel_id: 5587, height: 2480, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5587.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 11, name: "Alblittkopf", feratel_id: 5586, height: 2690, wms: nil, image: "http://wtvpict.feratel.com/picture/42/5586.jpeg?dcsdesign=WTP_freizeitticket.info.com&design=v3", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 21, name: "Talblick", feratel_id: nil, height: 1777, wms: nil, image: "http://www.leiter.cc/webcam/imageStart.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 21, name: "Rosskogelhütte", feratel_id: nil, height: 1777, wms: nil, image: "http://www.leiter.cc/webcam/imageRosskogel.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 21, name: "Blick Innsbruck", feratel_id: nil, height: 1777, wms: nil, image: "http://www.leiter.cc/webcam/imageIBK.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 21, name: "Solstein", feratel_id: nil, height: 1777, wms: nil, image: "http://www.leiter.cc/webcam/imageSolstein.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 21, name: "Bergstation Stiglreith", feratel_id: nil, height: 1777, wms: nil, image: "http://www.leiter.cc/webcam/imageStiglreith.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 21, name: "Riepen Alm", feratel_id: nil, height: 1777, wms: nil, image: "http://www.leiter.cc/webcam/imageRiepenAlm.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 22, name: "Gries", feratel_id: nil, height: 1187, wms: nil, image: "http://file.oe24.at/mowis/webcams/669971/mowis-gries-im-sellrain-t_01.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 23, name: "Leutasch", feratel_id: nil, height: 1136, wms: nil, image: "https://panodata2.panomax.com/cams/654/recent_optimized.jpg", panomax_area: "leutasch", panomax_webcam: nil, panomax_id: 654, wide: true, error: false},
  {skiresort_id: 23, name: "Sportplatz", feratel_id: nil, height: 1130, wms: nil, image: "http://upload.seefeld.com/webcam/sportplatz.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 23, name: "Rauthhütte", feratel_id: nil, height: 1605, wms: nil, image: "http://upload.seefeld.com/webcam/sportplatz.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 23, name: "Tal", feratel_id: nil, height: 1150, wms: nil, image: "http://www.adlerhof.at/webcam/leutaschtal_webcam.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false},
  {skiresort_id: 24, name: "Inntal Wattens", feratel_id: nil, height: 1500, wms: nil, image: "http://webcams.silberregion-karwendel.com/Huettegg_VGA.jpg", panomax_area: nil, panomax_webcam: nil, panomax_id: nil, wide: false, error: false}
])
