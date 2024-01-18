
import React, { useState } from 'react';

function EMICalculator() {
  const [loanAmount, setLoanAmount] = useState('');
  const [interestRate, setInterestRate] = useState('');
  const [loanTenure, setLoanTenure] = useState('');
  const [loanType, setLoanType] = useState('Arrears');
  const [emi, setEMI] = useState(null);

  const clearInputs = () => {
    setLoanAmount('');
    setInterestRate('');
    setLoanTenure('');
    setLoanType('Arrears');
    setEMI(null);
  };

  const calculateEMI = () => {
    const p = parseFloat(loanAmount);
    const r = parseFloat(interestRate) / (12 * 100);
    const n = parseFloat(loanTenure) * 12;

    if (p > 0 && r > 0 && n > 0) {
      let emiValue = 0;

      if (loanType === 'Arrears') {
        emiValue = (p * r * (Math.pow(1 + r, n))) / (Math.pow(1 + r, n) - 1);
      }
      setEMI(emiValue.toFixed(2));
    } else {
      setEMI(null);
    }
  };

  return (
    <div className="emi-calculator">
      <h1>EMI Loan Calculator</h1>
      <div className="input-group">
        <label>Loan Amount</label>
        <input type="number" value={loanAmount} onChange={(e) => setLoanAmount(e.target.value)} />
      </div>
      <div className="input-group">
        <label>Interest Rate (%)</label>
        <input type="number" value={interestRate} onChange={(e) => setInterestRate(e.target.value)} />
      </div>
      <div className="input-group">
        <label>Loan Tenure (in years)</label>
        <input type="number" value={loanTenure} onChange={(e) => setLoanTenure(e.target.value)} />
      </div>
      <div className="input-group">
        <label>Loan Type</label>
        <select value={loanType} onChange={(e) => setLoanType(e.target.value)}>
          <option value="Arrears">Arrears</option>
        </select>
      </div>
      <button onClick={calculateEMI}>Calculate</button>
      <button onClick={clearInputs}>Clear</button>
      {emi !== null && <p>Your Monthly EMI: Rs. {emi}</p>}
    </div>
  );
}

export default EMICalculator;