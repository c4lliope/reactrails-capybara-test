/** @jsx React.DOM */
var TagList = React.createClass({
  render: function() {
    return (
        <ul className="tagList" onClick={this.onSelect}>
        {this.renderTagNodes()}
        </ul>
    );
  },
  renderTagNodes: function() {
    return this.props.tags.map(function(tag) {
      return <li className="tag" key={tag}>{tag}</li>;
    });
  },
  // Actions
  onSelect: function(element) {
    this.props.onSelect(element.target.textContent);
  }
});
