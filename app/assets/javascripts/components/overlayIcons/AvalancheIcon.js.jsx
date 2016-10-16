function AvalancheIcon ( { src, avalancheLevel, text} ){
	let avalancheIcon = '/images/skiresort_widget/lw' + avalancheLevel + '.png'
	let pdfIcon = '/images/skiresort_widget/pdf.svg'


    return (
       <OverlayIcon icon={avalancheIcon} hoverIcon={pdfIcon} text={avalancheLevel} src='https://apps.tirol.gv.at/lwd/produkte/LLBTirol.pdf' />
    )
}

