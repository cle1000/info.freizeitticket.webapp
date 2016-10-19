function AvalancheReportForResort ( { data } ){

    return (
    	<div>
    		<div className="col-xs-12 col-md-6">
    			<AvalancheDangerRate rate_low="2" rate_height="3" header="Vormittag"/>
    		</div>
    		
    		<div className="col-xs-12 col-md-6">
    			<AvalancheDangerRate rate_low="2" rate_height="3" header="Nachmittag"/>
    		</div>
    	</div>
    )
}