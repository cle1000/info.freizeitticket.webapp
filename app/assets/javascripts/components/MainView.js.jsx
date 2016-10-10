class MainView extends React.Component {
	constructor(props) {
        super(props)
        this.state = { data: [] }
    }
	componentDidMount(){
		$.ajax({
	      url: 'skiresort/data',
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
		resorts = this.state.data.map(function(resort) {
			return (
				<div key={resort.id} className="padding col-lg-4 col-md-6 col-sm-6 col-xs-12">
					<Skiresort name={resort.name} homepage={resort.homepage} webcams={resort.webcams}/>
				</div>
			)
		}) 
		return <div className="row"> {resorts} </div>
	}
}