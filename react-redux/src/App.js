import React from 'react';
import { BrowserRouter as Router, Link, Route, Switch } from 'react-router-dom'
import Cart from './components/Cart';
import Header from './components/Header';
import Product from './components/Product';
import Login from './components/Login';
function App() {
   return (
      <Router>
         <div className="container">
            <Header />
            <Switch>
               <Route path="/" exact component={Product} />
               <Route path="/login" exact component={Login} />
               <Route path="/carts" exact component={Cart} />
            </Switch>
         </div>
      </Router>
   );
}

export default App;
