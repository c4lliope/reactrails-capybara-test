/** @jsx React.DOM */
var Greeting = React.createClass({
  getInitialState: function() {
    return {content1: "Set in Initial State"};
  },
  componentWillMount: function() {
    this.setState({content2: "Set in ComponentWillMount"});
  },
  componentDidMount: function() {
    this.setState({content3: "Set in ComponentDidMount"});
  },
  render: function() {
    return (
        <ul className="greeting">
        <h1>Hello from the Greeting Component!</h1>
        <li>Always rendered</li>
        <li>{this.props.content}</li>
        <li>{this.state.content1}</li>
        <li>{this.state.content2}</li>
        <li>{this.state.content3}</li>
        </ul>
    );
  },
});
