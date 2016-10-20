class Modal extends React.Component {  
    render(){
        return (
          <div>
            <img onClick={() => $(this._modal).modal()} alt={this.props.alt} className={this.props.className} src={this.props.src}/>
            
            <div ref={m => this._modal = m} className="modal fade">
              <div className="modal-dialog">
                <div className="modal-content">
                  <div className="modal-header">
                    <button type="button" className="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 className="modal-title">{this.props.title}</h4>
                  </div>
                  <div className="modal-body">
                    {this.props.children}
                  </div>
                  <div className="modal-footer">
                    <button type="button" className="btn btn-ft"  data-dismiss="modal" >OK</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        )
    }
}