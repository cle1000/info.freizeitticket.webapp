class SnowTimeline extends React.Component{
    render () {
      let elements = this.props.snowreports.map((sr,i) => <SnowTimelineElement key={i} content_text={sr.content_text} snow_text={sr.snow_text} source_name={sr.source_name} link_text={sr.link_text} source={sr.source} date={sr.date}/> )

      return (
      		<div className="col-xs-12">
			    {this.props.snowreports.length == 0 ? (<p className="padding-full"> <i className="fa fa-frown-o" aria-hidden="true"></i> Leider haben wir keine Neuschneeberichte gefunden ... </p>) : (
			    	<section id="cd-timeline" className="cd-container">
		          		{elements}
		        	</section> 
		        )}
		    </div>
	    )
	}
}

SnowTimeline.defaultProps = {
	snowreports: []
}
