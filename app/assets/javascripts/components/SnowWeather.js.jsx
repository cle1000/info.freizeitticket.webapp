function SnowWeather ( { src } ){

    return ( <div align="center" style={{margin:"16px 0"}}>
    	<iframe width="250" style={{background:'#FFFFFF'},{border: '1px solid #999999'},{overflow:'hidden'}} name="sh_frame" src={"http://www.schneehoehen.de/widgets/details/widget_schneebericht/"+ src + "?theme=grey&amp;language=de&amp;size=250&amp;weather=true"} scrolling="no" id="sh_frame" frameBorder="0" height="410"></iframe>
    	</div>
    )
}