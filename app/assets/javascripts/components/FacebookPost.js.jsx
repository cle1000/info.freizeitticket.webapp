class FacebookPost extends React.Component {
	constructor(props) {
        super(props)
    }

	render(){
		return <div data-width="1000" className="fb-post" href={this.props.url}/>

	}
}