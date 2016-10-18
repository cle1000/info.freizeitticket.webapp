class SnowTimelineElement extends React.Component{
    constructor(props){
      super(props)
      this.state = {offset: 0.8, show: true}
    }
  
    componentDidMount() {
      this.hideBlock();
      //on scolling, show/animate timeline blocks when enter the viewport
      window.addEventListener('scroll', this.handleScroll.bind(this));
    }

    componentWillUnmount(){
      window.removeEventListener('scroll', this.handleScroll);
    }

    showBlock() {
      let t = this._block.getBoundingClientRect().top
      if (t <= window.innerHeight*this.state.offset && !this.state.show ) {
        this.setState({show: true})
      }
    }

    hideBlock() {
      let t = this._block.getBoundingClientRect().top
      if ( t > window.innerHeight*this.state.offset ) {
        this.setState({show:false})
      }
    }

  	handleScroll(){
      (!window.requestAnimationFrame) 
        ? setTimeout(() => this.showBlock(), 100)
        : window.requestAnimationFrame(() => this.showBlock() );
  	}

    render () {
	    return (
	      <div ref={b => this._block = b} className="cd-timeline-block">  
          <div className={"cd-timeline-img cd-"+ this.props.source_name + " " + (!this.state.show ? 'is-hidden' : 'bounce-in')}>
            <img src={"/images/skiresort_widget/"+this.props.source_name.toLowerCase()+".png"}/>
          </div> 

          <div className={"cd-timeline-content " + (!this.state.show ? 'is-hidden' : 'bounce-in')}>
            <h2>{this.props.snow_text}</h2>
            {this.props.source_name == 'facebook' && <FacebookPost url={this.props.source}/>}
            {false && <p>gefunden auf {this.props.source_name} </p>}
            <span className="cd-date"><i className="fa fa-clock-o"></i> {this.props.date}</span>
            {this.props.source && <a href={this.props.source} target="_blank" className="cd-read-more">{this.props.link_text}</a>}
          </div> 
        </div>
	    )
	}
}