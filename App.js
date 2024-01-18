import logo from './logo.svg';
import './App.css';
//import Counter from './components/Counter';
//import Changecolor from './components/Changecolor';
//import Formatted from './components/Formatted';
//import UsestateDemo from './components/UsestateDemo';
//import UseEffectDemo from './components/UseEffectDemo';
//import UseEffect2 from './components/UseEffect2';
//import UseEffect3 from './components/UseEffect3';
//import Clock from './components/Clock';
//import DataFetch from './components/DataFetch';
import BMICalculator from './components/BMICalculator';
import EMICalculator from './components/EMICalculator';

function App() {
  return (
    <div className="App">
      <Counter></Counter>
      <Changecolor/>
      <Formatted/>
      <UsestateDemo/>
      <UseEffectDemo/>
     <UseEffect2/>
      <UseEffect3/>
      <Clock/>
      <DataFetch/>
      <BMICalculator/>
      <EMICalculator/>

      
    </div>);
}
export default App;