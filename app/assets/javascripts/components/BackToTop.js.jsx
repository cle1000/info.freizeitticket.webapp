class BackToTop extends React.Component{
    constructor (){
    	super()
    	 this.state = { hidden: true }
    }
    componentDidMount() {
      	window.addEventListener('scroll', this.handleScroll.bind(this));
    }

  	componentWillUnmount() {
    	window.removeEventListener('scroll', this.handleScroll);
  	}

  	handleScroll(){
 		   this.setState({hidden: window.scrollY < 100})
  	}

    render () {
	    return (
	    	<a onClick={() => {$('body,html').animate({ scrollTop: 0}, 800);}} className="back-to-top" hidden={this.state.hidden}>
	    		<i className="fa fa-arrow-up"/>
	    	</a>
	    )
	}
}

