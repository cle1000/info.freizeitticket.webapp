class Skiresort extends React.Component{
	constructor(props){
		super(props)
		this.state = {active_webcam: 0}
	}

	change_webcam() {
   		this.setState({active_webcam: (this.state.active_webcam + 1) % this.props.webcams.length});
  	}

  	componentDidMount() {
	    this.interval = setInterval(() => this.change_webcam(), 1000);
	}

  	componentWillUnmount() {
    	clearInterval(this.interval);
  	}

	render(){
		var webcam = this.props.webcams[this.state.active_webcam]
		return (
			<div className="skiresort_container">
				<img className="webcam_image" src={webcam.img_thumb}/>
				<div className="overlay">
					<div className="description">
						<div className="skiresort_name">{this.props.name}</div>
						<div className="webcam_name">{webcam.name} {webcam.height}m </div>
					</div>
				</div>
			</div>
		)
	}
}