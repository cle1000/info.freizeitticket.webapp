function SnowWeather ( { src } ){

    return ( 
    	<div>
		    <div className='col-xs-12 padding-full'>
		    	In Kürze findest du hier den aktuellen Wetterbericht und die Lawinenwarnstufen für das ausgewählte Skigebiet. 

		    	<iframe 
		    		width="250" 
		    		className="schneehoehen"
		    		name="sh_frame" 
		    		src={"https://ssl-proxy.my-addr.org/myaddrproxy.php/http/www.schneehoehen.de/widgets/details/widget_schneebericht/" + src + "?theme=blue&amp;language=de&amp;size=250&amp;weather=true"}
		    		scrolling="no" 
		    		id="sh_frame" 
		    		frameBorder="0" 
		    		height="410">
		    	</iframe>
		    </div>
		</div>
    )
}