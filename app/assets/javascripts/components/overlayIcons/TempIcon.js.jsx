function TempIcon ( { temp } ){
	let tempIcon = '/images/skiresort_widget/temp.svg'
    return (
       <OverlayIcon icon={tempIcon} text={temp} />
       )
}

