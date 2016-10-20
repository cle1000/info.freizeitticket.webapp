function InfoBar ( {} ){
	showAppAdds = !document.cookie.includes("app")

    return (
    		<div className="col-xs-12">
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

