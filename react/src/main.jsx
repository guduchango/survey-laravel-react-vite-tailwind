import React from "react";
import ReactDOM from "react-dom/client";
import { RouterProvider } from "react-router-dom";
import { ContextProvider } from "./contexts/ContextProvider";
import "./index.css";
import router from "./router.jsx";
import { GlobalProvider } from "./contexts/GlobalProvider.jsx";

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <GlobalProvider>
      <ContextProvider>
        <RouterProvider router={router} />
      </ContextProvider>
    </GlobalProvider>
  </React.StrictMode>
);
