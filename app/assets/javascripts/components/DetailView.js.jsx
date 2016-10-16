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
        this.state = { data: undefined}
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
					<div key={i} onClick={() => window.open(webcam.src)} className={(webcam.wide ? 'col-md-12' : 'col-md-6')}>
						<h5>{webcam.name + " " + webcam.height}</h5>
						<img className="pointer webcam-detail" src={webcam.img}/>
					</div>
				)
			}) 
		}

		return this.state.data ? (
				<div className="row">
					<div className="col-xs-12">
						<h1> {this.state.data.name} </h1>
					</div>
					{webcams}
					<BackToTop/>
					<div className="col-xs-12">
						<a className="btn btn-default" href="/" role="button">&laquo; Zurück</a> 
						<a className="btn btn-primary" href={this.state.data.homepage} target="_blank" role="button">Zum Skigebiet</a>
					</div>
				</div>
			) :  <Loader/> 
	}
}