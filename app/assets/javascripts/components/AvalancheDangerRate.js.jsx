function AvalancheDangerRate ( { header, rate_low, rate_height } ){
	let icon = '/images/avalanche.png'

    return <div className="danger-rate-container">
    			<h3> {header} </h3>
    			<img className="avalanche_img" src={icon}/>
    			<span className='rate_low'> {rate_low} </span>
    			<span className='rate_height'> {rate_height} </span>
    		</div>
}

