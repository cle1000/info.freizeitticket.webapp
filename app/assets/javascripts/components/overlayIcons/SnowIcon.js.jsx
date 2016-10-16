function SnowIcon ( { src, type, text} ){
	let snowIcon = '/images/skiresort_widget/snow.png'
	let srcIcon = '/images/skiresort_widget/'+ type + '.png'

    return (
       <OverlayIcon icon={snowIcon} hoverIcon={srcIcon} text={text} src={src} />
       )
}

