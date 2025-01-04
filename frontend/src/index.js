import React from 'react';
import ReactDOM from 'react-dom/client'; 
import { Provider } from 'react-redux';
import store from './store';
import WebContent from './components/WebContent';
import 'bootstrap/dist/css/bootstrap.min.css';

ReactDOM.render(
  <Provider store={store}>
    <WebContent />
  </Provider>,
  document.getElementById('root')
);
