import { fetchNui } from "./hooks/useNuiEvents";
import "./App.css";

const App = () => {
  const handleClick = () => {
    fetchNui("app_template", "testEvent", { hello: "hello", world: "world!" });
  };
  return (
    <div className="app">
      <div className="custom-app">
        <h3>Custom App Template</h3>
        <div className="button" onClick={handleClick}>
          <h4>Click Me!</h4>
        </div>
      </div>
    </div>
  );
};

export default App;
