import React, { Component } from 'react';

class BMICalculator extends Component {
  constructor(props) {
    super(props);
    this.state = {
      weight: '',
      height: '',
      bmi: null,
      category: '',
    };
  }
  handleChange = (e) => {
    this.setState({ [e.target.name]: e.target.value });
  };
  calculateBMI = () => {
    const {weight, height} = this.state;
    const heightInMeters = height / 100;
    const bmi = (weight / (heightInMeters * heightInMeters)).toFixed(2);
    let category = '';

    if (bmi < 16) {
      category = 'Severe Thinness';
    } else if (bmi < 17) {
      category = 'Moderate Thinness';
    } else if (bmi < 18.5) {
      category = 'Mild Thinness';
    } else if (bmi < 25) {
      category = 'Normal';
    } else if (bmi < 30) {
      category = 'Overweight';
    } else if (bmi < 35) {
      category = 'Obese Class I';
    } else if (bmi < 40) {
      category = 'Obese Class II';
    } else {
      category = 'Obese Class III';
    }

    this.setState({ bmi, category });
  };

  

  render() {
    const { weight, height, bmi, category } = this.state;

    return (
      <div>
        <h1>BMI Calculator</h1>
        <label>
          Weight (kg):
          <input type="number" name="weight" value={weight} onChange={this.handleChange} />
        </label>
        <br />
        <label>
          Height (cm):
          <input type="number" name="height" value={height} onChange={this.handleChange} />
        </label>
        <br />
        <button onClick={this.calculateBMI}>Calculate BMI</button>
        {bmi && (
          <div>
            <p>Your BMI: {bmi}</p>
            <p>Category: {category}</p>
          </div>
        )}
      </div>
    );
  }
}

export default BMICalculator;