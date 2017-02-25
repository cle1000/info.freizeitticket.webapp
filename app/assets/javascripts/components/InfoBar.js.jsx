function InfoBar ( {avalanche_data} ){
	showAppAdds = !localStorage.getItem("app");

    return (
    		<div className="col-xs-12">
    			<Modal alt="Information" title="Legende" className="info-img clickable pull-left" src="/images/info.svg">
    				<div className="legende">
						<div> <img src="/images/skiresort_widget/snow.png" alt="Schneehöhe" width="40" />Neuschnee</div>
	                    <div> <img alt="Lawinenbericht Stufe 1" src="/images/skiresort_widget/lw1.png"/>Lawinenwarnstufe 1 </div>
	                    <div> <img alt="Lawinenbericht Stufe 2" src="/images/skiresort_widget/lw2.png"/>Lawinenwarnstufe 2 </div>
	                    <div> <img alt="Lawinenbericht Stufe 2" src="/images/skiresort_widget/lw3.png"/>Lawinenwarnstufe 3</div>
	                    <div> <img alt="Lawinenbericht Stufe 3" src="/images/skiresort_widget/lw4.png"/>Lawinenwarnstufe 4</div>
	                  	<div> <img src="/images/skiresort_widget/temp.svg" alt="Temperatur"/>Aktuelle Temperatur</div>
	                  	<div> <img src="/images/skiresort_widget/pdf.svg" alt="Pdf"/>Link zum Lawinenbericht</div>
	                  	<div> <img src="/images/skiresort_widget/homepage.png" alt="Homepage"/>Link zum Schneebericht (Homepage)</div>
	                  	<div> <img src="/images/skiresort_widget/twitter.png" alt="Twitter"/>Link zum Schneebericht (Twitter)</div>
	                  	<div> <img src="/images/skiresort_widget/facebook.png" alt="Facebook"/>Link zum Schneebericht (Facebook)</div>
	                  	<div> <img src="/images/skiresort_widget/bergfex.png" alt="Bergfex"/>Link zum Schneebericht (Bergfex)</div>
	                </div>
    			</Modal>
    			{avalanche_data && (
	    			<Modal alt="Lawinenlagebericht" title="Lawinenlagebericht" className="info-img clickable pull-left" src="/images/avalancheinfo.png">
	    				<div className="legende">
							Von: {avalanche_data.author} am {avalanche_data.time}
				            <h3>{avalanche_data.highlights}</h3>
							<h4>{avalanche_data.comment}</h4>
							<h4>BEURTEILUNG DER LAWINENGEFAHR</h4>
							<p>{avalanche_data.travelAdvisoryComment}</p>
							<h4>SCHNEEDECKENAUFBAU</h4>
							<p>{avalanche_data.snowpackStructureComment}</p>
							<h4>ALPINWETTERBERICHT DER ZAMG-WETTERDIENSTSTELLE INNSBRUCK</h4>
							<p>{avalanche_data.synopsisComment}</p>
		                </div>
	    			</Modal>
	    		)}
    			{showAppAdds && (
    				<div className="">
						<a target="_blank" href="https://play.google.com/store/apps/details?id=brunnerclemens.freizeitticketinfo">
							<img  alt="play store"  className="appxs visible-xs" src="/images/app_icons/google_play.png"/>
							<img  alt="play store"  className="app hidden-xs" src="/images/app_icons/google_play.png"/>
						</a>
						<a target="_blank" href="https://itunes.apple.com/us/app/freizeitticket.info/id981073881?mt=8">
							<img alt="app store"  className="appxs visible-xs" src="/images/app_icons/app_store.svg"/>
							<img alt="app store"  className="app hidden-xs" src="/images/app_icons/app_store.svg"/>
						</a>
					</div>
    				)}
    	   </div>)
}