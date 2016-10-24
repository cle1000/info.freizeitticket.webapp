class Skiresort extends React.Component{
	constructor(props){
		super(props)
		this.state = {active_webcam: 0, image_loaded: false}
	}

	change_webcam() {
   		this.setState({active_webcam: (this.state.active_webcam + 1) % this.props.resort.webcams.length});
  	}

  	componentDidMount() {
       	window.addEventListener('scroll', this.handleScroll.bind(this));
       	setTimeout( (() => this.handleScroll()).bind(this), 500);
	}

  	componentWillUnmount() {
    	window.removeEventListener('scroll', this.handleScroll);
  	}

  	handleScroll(){
  		clearInterval(this.interval);

		let t = this._container.getBoundingClientRect().top
		let b =  this._container.getBoundingClientRect().bottom
		if (b > 0 && t < window.innerHeight){
			this.interval = setInterval(() => this.change_webcam(), 3000);
		}
  	}

	render(){
		let resort = this.props.resort
		let webcam = resort.webcams[this.state.active_webcam]
		let images = resort.webcams.map(w => <img onClick={()=> window.location = '/area/details?id='+resort.id} onLoad={() => this.setState({image_loaded: true})} className="shadow webcam_image pointer" src={w.img_thumb}/>)
		return (
			<div ref={(c) => this._container = c} className={"skiresort_container " + (this.state.image_loaded ? '' : 'skiresort_background_loader')}>
				{images[this.state.active_webcam]}
				<div className="overlay">
					{resort.snow && <SnowIcon text={resort.snow.text} type={resort.snow.source} src={resort.snow.link}/>}
					{resort.temperatur && <TempIcon temp={resort.temperatur} />}
					{resort.avalanche_level && <AvalancheIcon avalancheLevel={resort.avalanche_level}/>}
					<div className="description">
						<div className="skiresort_name">{resort.name}</div>
						<div className="webcam_name">{webcam.name} {webcam.height}m </div>
					</div>
				</div>
			</div>
		)
	}
}