function SnowWeather ( { src, lw } ){

    return ( 
    	<div>
		    <div className='col-xs-12 col-md-6 padding-full'>
		    	<iframe 
		    		width="250" 
		    		className="schneehoehen"
		    		name="sh_frame" 
		    		src={"https://ssl-proxy.my-addr.org/myaddrproxy.php/http/www.schneehoehen.de/widgets/details/widget_schneebericht/" + src + "?theme=gray&amp;language=de&amp;size=250&amp;weather=true"}
		    		scrolling="no" 
		    		id="sh_frame" 
		    		frameBorder="0" 
		    		height="410">
		    	</iframe>
		    </div>

		    <div className='col-xs-12 col-md-6 padding-full'>
		    	{(lw && lw > 0) ? ( 
		    		<div>
			    		<img className='padding-full avalanche-big' src={'/images/avalanche/' + lw + '.png'}/> 
			    		<a className="btn btn-default" href="https://apps.tirol.gv.at/lwd/produkte/LLBTirol.pdf" target='_blank'>Zum Lawinenbericht</a> 
		    		</div>
		    	):(
		    		<div>
			    		<div>Derzeit wurde kein aktueller Lawinenbericht gefunden.</div>
			    		<div className="padding-full">
			    			<a className="btn btn-default" href="https://lawine.tirol.gv.at/home/uebersicht/" target='_blank'>Mehr Informationen</a> 
			    		</div>
			    	</div>
		    	)}
		    </div>
		</div>
    )
}