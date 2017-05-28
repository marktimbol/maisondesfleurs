import React from 'react';
import ReactDOM from 'react-dom';

class QuantityDecrementIncrement extends React.Component
{
	constructor(props) {
		super(props);
		
		this.state = {
			quantity: 1,
		}

		this.decrement = this.decrement.bind(this);
		this.increment = this.increment.bind(this);
	}

	componentDidMount() {
		console.log('Hello from react.');
	}

	decrement() {
		let quantity = this.state.quantity - 1;
		this.setState({
			quantity: quantity < 1 ? 1 : quantity
		})
	}

	increment() {
		this.setState({
			quantity: this.state.quantity + 1
		})
	}	

	render()
	{
		return (
            <div className="input-group">
                <div className="input-group-btn">
                    <a href="#" className="btn btn-link" onClick={() => this.decrement()}>-</a>
                </div>

                <input type="number" name="qty" id="qty" 
                	value={this.state.quantity} 
                	title="Qty" 
                	onChange={(e) => this.setState({ quantity: e.target.value })}
                	className="input-text qty form-control" />
                
                <div className="input-group-btn">
                    <a href="#" className="btn btn-link" onClick={() => this.increment()}>+</a>
                </div>                              
            </div>
		)
	}
}

ReactDOM.render(
	<QuantityDecrementIncrement />,
	document.getElementById('QuantityDecrementIncrement')
)