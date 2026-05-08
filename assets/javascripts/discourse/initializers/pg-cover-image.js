import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("0.11.1", (api) => {
  console.log("pg-cover-image plugin loaded correctly");
});
