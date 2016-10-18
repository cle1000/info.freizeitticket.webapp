class SnowStatistic extends React.Component{

  componentDidMount() {
    var data = {
      labels: ['Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag'],
      series: [
        [15, 25, 0, 10, 6]
      ]
    }
    this.updateChart(data);
  }

  updateChart(data) {
    return new Chartist.Bar('.chart', data, {stackBars: true});
  }

  render () {
    return (
      <div>
        <div className="chart" style={{strokeWidth: '30px'}}></div>        
      </div>
    );
  }
}

