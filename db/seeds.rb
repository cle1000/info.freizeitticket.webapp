# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

nordkette = Skiresort.create(	{
	name: 'Nordkette', 
	avalanche_region: 2, 
	twitter: 'nordketteibk',
	facebook: 'nordkette',
	bergfex: 'innsbruck-nordkette',
	homepage: 'http://www.nordkette.com/',
	snow_page: 'http://www.nordkette.com/die-bahn/lifte-in-betrieb.html',
	weather: 'nordpark-seegrube'
})



stubaier = Skiresort.create({
	name: 'Stubaier Gletscher',
	avalanche_region: 8,
	twitter: 'stubaigletscher',
    facebook: 'schifahren.stubaiergletscher',
    snow_page: 'http://www.stubaier-gletscher.com',
    bergfex: 'stubaier-gletscher',
    homepage: 'http://www.stubaier-gletscher.com',
    weather: 'stubaier-gletscher',
})

patscherkofel = Skiresort.create({
	name: 'Patscherkofel',
	avalanche_region: 6,
    facebook: 'snowparkinnsbruck',
    bergfex: 'innsbruck-igls-patscherkofel',
    homepage: 'http://www.patscherkofelbahnen.at/',
    weather: 'patscherkofel'
})

axamerlizum = Skiresort.create({
	name: 'Patscherkofel',
	avalanche_region: 5,
    facebook: 'axamerlizum',
    bergfex: 'axamer-lizum',
    twitter: 'axamerlizum',
    homepage: 'http://www.axamer-lizum.at',
    snow_page: 'http://www.axamer-lizum.at/de/winter/aktueller-schneebericht-pistenverhaeltnisse.html',
    weather: 'axamer-lizum'
})

schlick = Skiresort.create({
	name: 'Schlick 2000',
	avalanche_region: 5,
    facebook: 'Schlick.2000.Schizentrum.AG',
    bergfex: 'schlick',
    homepage: 'http://www.schlick2000.at/',
    snow_page: 'http://www.stubai.at/skigebiete/schlick2000/skigebiet/',
    weather: 'skizentrum-schlick-2000'
})


kuehtai = Skiresort.create({
	name: 'Kühtai', 
	avalanche_region: 5, 
	twitter: 'kuhtai',
	facebook: 'kuehtai',
	bergfex: 'kuehtai',
	homepage: 'http://www.kuehtai.info/',
	snow_page: 'http://www.kuehtai.info/winter/skigebiet/schneebericht.html',
	weather: 'kuehtai'
})

glungezer = Skiresort.create({
	name: 'Glungezer', 
	avalanche_region: 6, 
	twitter: 'glungezer',
	facebook: 'glungezer',
	bergfex: 'kuehtai',
	homepage: 'http://www.glungezerbahn.at/',
	weather: 'glungezer'
})

muttereralm = Skiresort.create({
	name: 'Muttereralm', 
	avalanche_region: 5, 
	facebook: 'Muttereralm.Tirol',
	bergfex: 'muttereralm',
	homepage: 'http://www.muttereralm.at/',
	weather: 'muttereralm'
})

elfer = Skiresort.create({
	name: 'Elfer Lifte', 
	avalanche_region: 5, 
	facebook: 'Elferlifte',
	bergfex: 'stubaital-neustift',
	homepage: 'http://www.elfer.at',
	snow_page: 'http://www.elfer.at',
	weather: 'elferlifte'
})

bergeralm = Skiresort.create({
	name: 'Bergeralm', 
	avalanche_region: 8, 
	facebook: '243074665809719',
	bergfex: 'bergeralm',
	homepage: 'http://www.bergeralm.net',
	weather: 'ski-und-freizeit-arena-bergeralm'
})

kappl = Skiresort.create({
	name: 'Bergbahnen Kappl', 
	avalanche_region: 1, 
	twitter: 'kappl_insider',
	facebook: 'kappl.tirol',
	bergfex: 'bergeralm',
	homepage: 'http://www.kappl.com',
	weather: 'bergbahnen-kappl',
	snow_page: 'http://www.kappl.com/en/info/snowreport'
})

obergurgl = Skiresort.create({
	name: 'Obergurgl', 
	avalanche_region: 8, 
	twitter: 'obergurglcom',
	facebook: 'obergurgl',
	bergfex: 'obergurgl-hochgurgl',
	homepage: 'http://www.obergurgl.com',
	snow_page: 'http://www.obergurgl.com/wintersportbericht',
	weather: 'obergurgl-hochgurgl'
})



stanton = Skiresort.create({
	name: 'St Anton', 
	avalanche_region: 1, 
	twitter: 'stantonreview',
	facebook: 'Stanton.Arlberg',
	bergfex: 'stanton-stchristoph',
	homepage: 'http://www.stantonamarlberg.com/winter',
	weather: 'st-anton-am-arlberg'
})

lech = Skiresort.create({
	name: 'Lech Zürs', 
	avalanche_region: 1, 
	twitter: 'lech_zuers',
	facebook: 'lechzuers',
	bergfex: 'lech-zuers-arlberg',
	homepage: 'http://www.lech-zuers.at',
	weather: 'lech-zuers'
})



seefeld = Skiresort.create({
	name: 'Seefeld - Rosshütte',
	avalanche_region: 2, 
	facebook: 'rosshuette',
	bergfex: 'seefeld-rosshuette',
	homepage: 'http://www.rosshuette.at/',
	snow_page: 'http://www.nordkette.com/die-bahn/lifte-in-betrieb.html',
	weather: 'rosshuette'
})

galtuer = Skiresort.create({
	name: 'Galtür', 
	avalanche_region: 4, 
	twitter: 'galtuer_insider',
	facebook: 'galtuer.paznaun',
	bergfex: 'galtuer',
	homepage: 'http://www.galtuer.com',
	snow_page: 'http://www.galtuer.com/en/info/snow-report',
	weather: 'silvretta-galtuer'
})

kellerjoch = Skiresort.create({
	name: 'Kellerjoch', 
	avalanche_region: 6, 
	facebook: 'Kellerjochbahn',
	bergfex: 'kellerjoch',
	homepage: 'http://www.kellerjochbahn.at',
	weather: 'kellerjoch'
})


ischgl = Skiresort.create({
	name: 'Ischgl', 
	avalanche_region: 4, 
	twitter: 'ischgl_insider',
	facebook: 'paznaun.ischgl',
	bergfex: 'ischgl',
	homepage: 'http://www.ischgl.com/',
	snow_page: 'http://www.ischgl.com/en/more/snow-report',
	weather: 'silvretta-arena-ischgl-samnaun'
})



hochkoessen = Skiresort.create({
	name: 'Hochkössen', 
	avalanche_region: 3, 
	facebook: '143386325725577',
	bergfex: 'koessen',
	homepage: 'http://www.bergbahnen-koessen.at',
	weather: 'hochkoessen'
})

mieders = Skiresort.create({
	name: 'Serlesbahn Mieders', 
	avalanche_region: 4, 
	facebook: '254121311278578',
	bergfex: 'mieders',
	homepage: 'http://www.serlesbahnen.com',
	weather: 'serles'
})

ranggerkoepfl = Skiresort.create({
	name: 'Rangger Köpfl', 
	avalanche_region: 5, 
	bergfex: 'ranggerkoepfl',
	homepage: 'http://www.rangger-koepfl.at/',
})

gries = Skiresort.create({
	name: 'Sonnenberglift Gries', 
	avalanche_region: 5, 
	bergfex: 'sonnenberglift-gries-im-sellrain',
	homepage: 'http://www.sonnenberglift.at/',
})

leutasch = Skiresort.create({
	name: 'Leutasch', 
	avalanche_region: 2, 
	facebook: 'hochmoos.tirol',
	bergfex: 'hochmoos-kreithlift-leutasch',
	homepage: 'http://www.hochmoos-tirol.com/',
	weather: 'leutasch-kreithlifte'
})

huettegglift = Skiresort.create({
	name: 'Hüttegglift', 
	avalanche_region: 6, 
	facebook: 'huettegglift',
	bergfex: 'huettegglift',
	homepage: 'http://www.huettegglift.at/',
})

Webcam.create([
	{
		name: 'Seegrube',
		height: 1905,
		feratel_id: 5645,
		skiresort: nordkette
	},
	{
		name: 'Seegrube',
		height: 1905,
		image: 'https://apps.tirol.gv.at/luft/nordkette.jpg',
		skiresort: nordkette
	},
	{
		name: 'Hafelekar',
		height: 2256,
		feratel_id: 5647,
		skiresort: nordkette
	},
	{
		name: 'Hungerburg',
		height: 870,
		feratel_id: 5646,
		skiresort: nordkette
	},
	{
		name: 'Daunjoch',
		height: 3015,
		feratel_id: 5711,
		skiresort: stubaier
	},
	{
		name: 'Eisgrat',
		height: 2900,
		feratel_id: 5710,
		skiresort: stubaier
	},
	{
		name: 'Gamsgarten',
		height: 2626,
		wms: 'stubaier-gletscher',
		skiresort: stubaier
	},
	{
		name: 'Snowpark',
		height: 2460,
		wms: 'stubaier-gletscher-snowpark',
		skiresort: stubaier
	},
	{
		name: 'Schaufeljoch',
		height: 3155,
		wms: 'stubaier-gletscher-schaufeljoch',
		skiresort: stubaier
	},
	{
		name: 'ÖAV Schutzhaus',
		height: 1970,
		image: 'https://apps.tirol.gv.at/luft/patscherkofel.jpg',
		skiresort: patscherkofel
	},
	{
		name: 'Hoadl-Haus',
		height: 2340,
		feratel_id: 5510,
		skiresort: axamerlizum
	},
	{
		name: 'Lizumerhof',
		height: 1580,
		image: 'http://www2.lizumerhof.at/live/lizumerhof-live.jpg',
		skiresort: axamerlizum
	},
	{
		name: 'Krinnenkopf',
		height: 2100,
		feratel_id: 5670,
		skiresort: schlick
	},
	{
		name: 'Froneben Kinderland',
		height: 1345,
		feratel_id: 25670,
		skiresort: schlick
	},
	{
		name: 'Hochalterbahn',
		height: 2500,
		image: 'http://www.kuehtai.info/hohemut_800x600.jpg',
		skiresort: kuehtai
	},
	{
		name: 'Startbahn',
		height: 2020,
		image: 'http://www.kuehtai.info/livecam2_800x600.jpg',
		skiresort: kuehtai
	},
	{
		name: 'Graf Ferdinand Haus',
		height: 2150,
		image: 'http://www.kuehtai.info/rodelhuette_800x600.jpg',
		skiresort: kuehtai
	},
	{
		name: 'Mittergrathütte',
		height: 2000,
		image: 'http://www.mittergrat.at/mittergrathuette_800x600.jpg',
		skiresort: kuehtai
	},
	{
		name: 'Weltcuphang',
		height: 2110,
		image: 'http://www.kuehtai.info/webcam1_thumb_original.jpg',
		skiresort: kuehtai
	},
	{
		name: 'Kühtai',
		height: 2110,
		image: 'http://www.kuehtai.info/webcam2_thumb_original.jpg',
		skiresort: kuehtai
	},
	{
		name: 'Kühtaier Schlössl',
		height: 1950,
		image: 'http://www.kuehtai.at/static/webcam/live.jpg',
		skiresort: kuehtai
	},
	{
		name: 'Glungezergimpfel',
		height: 2677,
		image: 'http://www.mdw.ag/camglungezer/glungezer_talblick.jpg',
		skiresort: glungezer
	},
	{
		name: 'Bergblick',
		height: 595,
		image: 'http://www.mdw.ag/camglungezer/glungezer_bergblick.jpg',
		skiresort: glungezer
	},
	{
		name: 'Mittelstation Halsmarter',
		height: 1560,
		feratel_id: 5659,
		skiresort: glungezer
	},
	{
		name: 'Bergstation',
		height: 1602,
		image: 'http://www.muttereralm.at/images/webcam1/webcam1.jpg',
		skiresort: muttereralm
	},
	{
		name: 'Pfriemesköpfl',
		height: 1802,
		image: 'http://www.muttereralm.at/images/webcam2/webcam2.jpg',
		skiresort: muttereralm
	},
	{
		name: 'Panoramabahn',
		height: 1790,
		feratel_id: 5714,
		skiresort: elfer
	},
	{
		name: 'Neustift',
		height: 1000,
		image: 'http://erika.at/fileadmin/user_upload/webcam/cam.jpg',
		skiresort: elfer
	},
	{
		name: 'Blick auf Neustift',
		height: 1040,
		image: 'http://www.kratzerwirt.at/webcam/webcam/cam1.jpg',
		skiresort: elfer
	},
	{
		name: 'Fulpmes',
		height: 930,
		image: 'http://www.amcs.at/lc/atzinger_lc.jpg',
		skiresort: elfer
	},
	{
		name: 'Hohe Mut',
		height: 2670,
		feratel_id: 5650,
		skiresort: obergurgl
	},
	{
		name: 'Gaisberg',
		height: 2005,
		feratel_id: 5652,
		skiresort: obergurgl
	},
	{
		name: 'Hochgurgl',
		height: 2410,
		feratel_id: 5570,
		skiresort: obergurgl
	},
	{
		name: 'Top Mountaion Crosspoint',
		height: 2165,
		feratel_id: 5571,
		skiresort: obergurgl
	},
	{
		name: 'Galzig Berg',
		height: 2080,
		feratel_id: 5691,
		skiresort: stanton
	},
	{
		name: 'Valluga',
		height: 2811,
		feratel_id: 5690,
		skiresort: stanton
	},
	{
		name: 'Grampen',
		height: 1860,
		feratel_id: 5692,
		skiresort: stanton
	},
	{
		name: 'Skicenter',
		height: 1320,
		feratel_id: 5693,
		skiresort: stanton
	},
	{
		name: 'Rendl',
		height: 2025,
		feratel_id: 5694,
		skiresort: stanton
	},
	{
		name: 'St. Christoph',
		height: 1770,
		feratel_id: 5695,
		skiresort: stanton
	},
	{
		name: 'Nasserein',
		height: 1292,
		image: 'http://livecam.abbag.com/nasserein.jpg',
		skiresort: stanton
	},
	{
		name: 'Kapall',
		height: 2330,
		image: 'http://livecam.abbag.com/kapall.jpg',
		skiresort: stanton
	},
	{
		name: 'Arlberg Hospiz',
		height: 1780,
		image: 'https://www.arlberghospiz.at/tl_files/webcam/image2.jpg',
		skiresort: stanton
	},
	{
		name: 'Flüchenlift',
		height: 1480,
		feratel_id: 5810,
		skiresort: lech
	},
	{
		name: 'Kriegerhorn',
		height: 2090,
		panomax_area: 'lech',
		panomax_id: 982,
		skiresort: lech
	},{
		name: 'Oberlech',
		height: 1671,
		panomax_area: 'goldenerberg',
		panomax_id: 9,
		skiresort: lech
	},
	{
		name: 'Kirche',
		height: 1470,
		image: 'http://www.pfarre-lech.at/web/live/pfarre-lech-live.jpg',
		skiresort: lech
	},
	{
		name: 'Omeshorn',
		height: 1444,
		image: 'http://www.rotewand.com/webcam/image_big.jpg',
		skiresort: lech
	},
	{
		name: 'Arlberghaus',
		height: 1690,
		image: 'http://www.arlberghaus.com/schneefall/P_1920.jpg',
		skiresort: lech
	},{
		name: 'Rud-Alpe',
		height: 1560,
		image: 'http://webcam.rud-alpe.com/rudalpe_live.jpg',
		skiresort: lech
	},{
		name: 'Hotel Schmelzhof',
		height: 1450,
		image: 'http://www.schmelzhof.com/webcam/image.jpg',
		skiresort: lech
	},{
		name: 'Steinboden',
		height: 1650,
		feratel_id: 5745,
		skiresort: bergeralm
	},{
		name: 'Sattelbergalm',
		height: 1633,
		image: 'http://www.wipptal.net/webcam_gries3.jpg',
		skiresort: bergeralm
	},

	{
		name: 'Bergrestaurant Rosshütte',
		height: 1180,
		panomax_area: 'seefeld',
		panomax_webcam: 'rosshuette',
		panomax_id: 368,
		skiresort: seefeld
	},
	{
		name: 'Härmelekopf',
		height: 2045,
		panomax_area: 'seefeld',
		panomax_webcam: 'haermelekopf',
		panomax_id: 357,
		skiresort: seefeld
	},
	{
		name: 'Dorfplatz',
		height: 1180,
		panomax_area: 'seefeld',
		panomax_webcam: 'seefeld-dorfplatz',
		panomax_id: 409,
		skiresort: seefeld
	},
	{
		name: 'Seefeld',
		height: 1210,
		image: 'http://webcam.isser.com/ccam.jpg',
		skiresort: seefeld
	},
	{
		name: 'Hotel Habhof',
		height: 1250,
		image: 'http://panorama-cam.at/habhof/livecam//moesern.jpg',
		skiresort: seefeld
	},
	{
		name: 'Dorf',
		height: 1600,
		feratel_id: 5548,
		skiresort: galtuer
	},
	{
		name: 'Kopssee',
		height: 1850,
		feratel_id: 5549,
		skiresort: galtuer
	},
	{
		name: 'Ballunspitzbahn',
		height: 1950,
		feratel_id: 5550,
		skiresort: galtuer
	},
	{
		name: 'Hotel Luggi',
		height: 1580,
		image: 'http://www.luggi.at/cam/create_webcam.php',
		skiresort: galtuer
	},
	{
		name: 'Bergstation Kellerjochbahn',
		height: 1887,
		image: 'http://webcams.silberregion-karwendel.com/kellerjoch_VGA.jpg',
		skiresort: kellerjoch
	},
	{
		name: 'Schwaz/Kogelmoos',
		height: 1118,
		image: 'https://apps.tirol.gv.at/luft/schwaz_koglmoos.jpg',
		skiresort: kellerjoch
	},
	{
		name: 'Idalpe',
		height: 2320,
		feratel_id: 5575,
		skiresort: ischgl
	},
	{
		name: 'Pardatschgrat',
		height: 2583,
		feratel_id: 5576,
		skiresort: ischgl
	},
	{
		name: 'Ischgl Dorf',
		height: 1400,
		feratel_id: 25577,
		skiresort: ischgl
	},
	{
		name: 'Palinkopf',
		height: 2864,
		panomax_area: 'palinkopf',
		panomax_id: 101,
		skiresort: ischgl
	},
	{
		name: 'Greitspitze',
		height: 2872,
		image: 'http://tv.silvretta.at/webcam/mobotix_greitspitz.jpg',
		skiresort: ischgl
	},
	{
		name: 'Ischgl Ort',
		height: 1400,
		panomax_area: 'ischgl',
		panomax_id: 141,
		skiresort: ischgl
	},
	{
		name: 'Silvrettabahn',
		height: 1360,
		image: 'http://file.oe24.at/mowis/webcams/670121/mowis-ischgl-t_01.jpg',
		skiresort: ischgl
	},
	{
		name: 'Alp Trida Sattel',
		height: 2499,
		image: 'http://www.swisswebcams.ch/mobotix/a32p.jpg',
		skiresort: ischgl
	},
	{
		name: 'Funpark Idalpe',
		height: 2300,
		image: 'http://tv.silvretta.at/webcam/funpark.jpg',
		skiresort: ischgl
	},
	{
		name: 'Paznauner Taja',
		height: 1989,
		image: 'http://www.paznauner-taja.at/Pano/taja.jpg',
		skiresort: ischgl
	},
	{
		name: 'Unterberghorn',
		height: 1773,
		feratel_id: 5610,
		skiresort: hochkoessen
	},
	{
		name: 'Kinderland',
		height: 620,
		feratel_id: 5611,
		skiresort: hochkoessen
	},{
		name: 'Bergstation Koppeneck',
		height: 1650,
		feratel_id: 25770,
		skiresort: mieders
	},{
		name: 'Diasbahn Bergstation',
		height: 1830,
		feratel_id: 5585,
		skiresort: kappl
	},{
		name: 'Alblitt',
		height: 2480,
		feratel_id: 5587,
		skiresort: kappl
	},{
		name: 'Alblittkopf',
		height: 2690,
		feratel_id: 5586,
		skiresort: kappl
	},{
		name: 'Talblick',
		height: 1777,
		image: 'http://www.leiter.cc/webcam/imageStart.jpg',
		skiresort: ranggerkoepfl
	},{
		name: 'Rosskogelhütte',
		height: 1777,
		image: 'http://www.leiter.cc/webcam/imageRosskogel.jpg',
		skiresort: ranggerkoepfl
	},{
		name: 'Blick Innsbruck',
		height: 1777,
		image: 'http://www.leiter.cc/webcam/imageIBK.jpg',
		skiresort: ranggerkoepfl
	},{
		name: 'Solstein',
		height: 1777,
		image: 'http://www.leiter.cc/webcam/imageSolstein.jpg',
		skiresort: ranggerkoepfl
	},{
		name: 'Bergstation Stiglreith',
		height: 1777,
		image: 'http://www.leiter.cc/webcam/imageStiglreith.jpg',
		skiresort: ranggerkoepfl
	},{
		name: 'Riepen Alm',
		height: 1777,
		image: 'http://www.leiter.cc/webcam/imageRiepenAlm.jpg',
		skiresort: ranggerkoepfl
	},{
		name: 'Gries',
		height: 1187,
		image: 'http://file.oe24.at/mowis/webcams/669971/mowis-gries-im-sellrain-t_01.jpg',
		skiresort: gries
	},{
		name: 'Leutasch',
		height: 1136,
		panomax_id: 654,
		panomax_area: 'leutasch',
		skiresort: leutasch
	},{
		name: 'Sportplatz',
		height: 1130,
		image: 'http://upload.seefeld.com/webcam/sportplatz.jpg',
		skiresort: leutasch
	},{
		name: 'Rauthhütte',
		height: 1605,
		image: 'http://upload.seefeld.com/webcam/sportplatz.jpg',
		skiresort: leutasch
	},{
		name: 'Tal',
		height: 1150,
		image: 'http://www.adlerhof.at/webcam/leutaschtal_webcam.jpg',
		skiresort: leutasch
	},{
		name: 'Inntal Wattens',
		height: 1500,
		image: 'http://webcams.silberregion-karwendel.com/Huettegg_VGA.jpg',
		skiresort: huettegglift
	}
])