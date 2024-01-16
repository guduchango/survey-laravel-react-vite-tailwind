import { createContext, useState, useEffect } from 'react'
import axiosClient from "../axios";

export const GlobalContext = createContext()
export const GlobalProvider = ({ children }) => {
  const [surveys, setSurveys] = useState([])
  useEffect(() => {
    axiosClient.get("/survey").then(({ data }) => {
      setSurveys(data.data);
    });
  }, [])

return (
  <GlobalContext.Provider value={{
   surveys,
    setSurveys,
  }}>
    {children}
  </GlobalContext.Provider>
)
}

