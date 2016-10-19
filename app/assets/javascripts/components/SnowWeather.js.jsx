function SnowWeather ( { src } ){

    return ( 
    	<div>
		    <div className='col-xs-12 padding-full'>
		    	<iframe 
		    		width="250" 
		    		className="schneehoehen"
		    		name="sh_frame" 
		    		src={"http://www.schneehoehen.de/widgets/details/widget_schneebericht/"+ src + "?theme=grey&amp;language=de&amp;size=250&amp;weather=true"} 
		    		scrolling="no" 
		    		id="sh_frame" 
		    		frameBorder="0" 
		    		height="410">
		    	</iframe>
		    </div>
		</div>
    )
}
