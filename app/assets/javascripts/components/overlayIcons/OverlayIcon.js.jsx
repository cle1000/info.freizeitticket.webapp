class OverlayIcon extends React.Component{
	constructor(props){
		super(props)
		this.state = {hover: false}

	}

    mouseOver() {
        this.setState({hover: true});
    }

    mouseOut() {
        this.setState({hover: false});
    }

	render(){
		var showHoverIcon = this.state.hover && this.props.hoverIcon;
		var iconToShow = showHoverIcon ? this.props.hoverIcon : this.props.icon;
		var addLink = !!this.props.src
		return (
			<div className={"overlay-icon pull-right " + (addLink ? 'pointer' : '')} onMouseDown={() => { if (this.props.src) window.open(this.props.src, '_blank')}} onMouseOver={() => this.mouseOver()} onMouseLeave={() => this.mouseOut()}>
				<img className="icon" src={iconToShow}/>
				<div className="text">
					{this.props.text}
				</div>
			</div>
		)
	}
}