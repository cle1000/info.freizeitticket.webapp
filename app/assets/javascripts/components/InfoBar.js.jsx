function InfoBar ( {} ){
	showAppAdds = !localStorage.getItem("app");

    return (
    		<div className="col-xs-12">
    			<a data-toggle="modal" href="#infoModal"><img alt="Information" className="info-img pull-left" src="/images/info.svg"/></a>
				<a data-toggle="modal" href="#avalancheModal"><img alt="Lawinen Information" className="info-img pull-left" src="/images/avalancheinfo.png"/></a>
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

