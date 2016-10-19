getUrlVars = function() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m, key, value) {
        vars[key] = value;
    });
    return vars;
}

class DetailView extends React.Component {
	constructor(props) {
        super(props)
        this.state = { data: undefined, active_tab: 'webcam'}
    }
	componentDidMount(){
		$.ajax({
	      url: '/skiresort/detail?id='+getUrlVars()['id'],
	      dataType: 'json',
	      cache: false,
	      success: function(data) {
	        this.setState({data: data});
	      }.bind(this),
	      error: function(xhr, status, err) {
	        console.error(this.props.url, status, err.toString());
	      }.bind(this)
		})
	}

	render(){
		let webcams = []
		if (this.state.data){
			webcams = this.state.data.webcams.map(function(webcam, i) {
				return (
					<div key={i}  className={(webcam.wide ? 'col-md-12' : 'col-md-6')}>
						<h4>{webcam.name + " " + webcam.height}</h4>
						<img onClick={() => window.open(webcam.src)} className="shadow pointer webcam-detail" src={webcam.img}/>
					</div>
				)
			}) 
		}

		return this.state.data ? (
				<div className="row">
					<div className="col-xs-12">
						<h1> {this.state.data.name} </h1>
					</div>
					<ul className="nav nav-tabs">
					  <li role="presentation" className={this.state.active_tab == 'webcam' ? 'active' : ''}><a className="pointer" onClick={() => this.setState({active_tab :'webcam'})}>Webcams</a></li>
					  <li role="presentation" className={this.state.active_tab == 'snowreport' ? 'active' : ''}><a className="pointer" onClick={() => this.setState({active_tab :'snowreport'})}>Schneeberichte</a></li>
					  {this.state.data.weather && <li role="presentation" className={this.state.active_tab == 'weather' ? 'active' : ''}><a className="pointer" onClick={() => this.setState({active_tab :'weather'})}>Wetter</a></li>	}
					</ul>

					{this.state.active_tab == 'webcam' && webcams}

					{this.state.active_tab == 'snowreport' && <SnowTimeline snowreports={this.state.data.snowreports}/>}

					{(this.state.active_tab == 'weather' && this.state.data.weather) && <SnowWeather src={this.state.data.weather}/>}

					<div className="col-xs-12 padding-full">
						<a className="btn btn-default" href="/">&laquo; Zurück</a> 
						 &nbsp;
						<a className="btn btn-ft" href={this.state.data.homepage} target="_blank">Zum Skigebiet</a>
					</div>
					<BackToTop/>
				</div>
			) :  <Loader/> 
	}
}