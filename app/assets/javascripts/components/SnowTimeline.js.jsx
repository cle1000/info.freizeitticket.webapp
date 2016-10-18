class SnowTimeline extends React.Component{
    render () {
      let elements = this.props.snowreports.map((sr,i) => <SnowTimelineElement key={i}  snow_text={sr.snow_text} source_name={sr.source_name} link_text={sr.link_text} source={sr.source} date={sr.date}/> )

      return (
      		<div>
				<h2 className="padding"> Schneeberichte: </h2>		      
			    <section id="cd-timeline" className="cd-container">
		          {elements}
		        </section> 
		    </div>
	    )
	}
}

