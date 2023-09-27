import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";
import "./index.css";

const root = ReactDOM.createRoot(document.getElementById("root"));

const loadApp = () => {
  root.render(
    <React.StrictMode>
      <App />
    </React.StrictMode>
  );
};

window.addEventListener("message", (event) => {
  if (event.data.message === "loadApp") {
    loadApp();
  }
});

// loadApp(); //You can uncomment this function to show the app in dev enviroment
