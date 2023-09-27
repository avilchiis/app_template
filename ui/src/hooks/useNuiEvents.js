import { useEffect, useRef } from "react";

const isEnvBrowser = () => !window.invokeNative;

export const useNuiEvent = (action, handler) => {
  const savedHandler = useRef(() => {});

  useEffect(() => {
    savedHandler.current = handler;
  }, [handler]);

  useEffect(() => {
    const eventListener = (event) => {
      const { action: eventAction, data } = event.data;

      if (savedHandler.current) {
        if (eventAction === action) {
          savedHandler.current(data);
        }
      }
    };

    window.addEventListener("message", eventListener);

    return () => window.removeEventListener("message", eventListener);
  }, [action]);
};

export async function fetchNui(resourceName, eventName, data, mockData) {
  const options = {
    method: "post",
    headers: {
      "Content-Type": "application/json; charset=UTF-8",
    },
    body: JSON.stringify(data),
  };

  if (isEnvBrowser() && mockData) return mockData;

  const resp = await fetch(`https://${resourceName}/${eventName}`, options);

  const respFormatted = await resp.json();

  return respFormatted;
}
