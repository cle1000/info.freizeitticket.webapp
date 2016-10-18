class SnowTimeline extends React.Component{
    render () {
      let elements = this.props.snowreports.map((sr,i) => <SnowTimelineElement key={i}  snow_text={sr.snow_text} source_name={sr.source_name} link_text={sr.link_text} source={sr.source} date={sr.date}/> )

      return (
	    	<section id="cd-timeline" className="cd-container">
          {elements}
          <SnowTimelineElement snow_text="30 cm" source_name="homepage" link_text="asdf" source="http://www.twitter.com" date="17.10.2016" />
        </section> 
	    )
	}
}

