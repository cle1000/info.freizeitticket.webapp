class MainView extends React.Component {
	constructor(props) {
        super(props)
        this.state = { data: undefined }
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
		let resorts = []
		if (this.state.data) {
			resorts = this.state.data.map(function(resort) {
				return (
					<div key={resort.id} className="padding col-lg-4 col-md-6 col-sm-6 col-xs-12">
						<Skiresort resort={resort}/>
					</div>
				)
			})
		} 
		return this.state.data ? (
				<div className="row"> 
					<InfoBar/>
					{resorts} 
					<BackToTop/>
				</div>
				) : ( <Loader/> )
	}
}