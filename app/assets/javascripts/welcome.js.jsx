/** @jsx React.DOM */

var CommentBox = React.createClass({
  loadCommentsFromServer: function() {
    $.ajax({
      url: this.props.url,
      dataType: 'json',
      success: function(data) {
        this.setState({data: data});
      }.bind(this),
      error: function(xhr, status, err) {
        console.error(this.props.url, status, err.toString());
      }.bind(this)
    });
  },
  getInitialState: function() {
    return {data: []};
  },
  componentDidMount: function() {
    this.loadCommentsFromServer();
  },
  render: function() {
    return (
      <div className="page-header">
        <div className="alert alert-info">FB Results</div>
        <FBNodes data={this.state.data} />
      </div>
    );
  }
});

var FBNodes = React.createClass({
  render: function() {
    var commentNodes = this.props.data.map(function(comment, index) {
      return (
	  <button type="button" className="btn btn-lg btn-primary" key={index}>
	  	{comment.fb}
	  </button>
      );
    });
    return (
      <div>
        {commentNodes}
      </div>
    );
  }
});


