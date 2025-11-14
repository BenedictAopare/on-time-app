require("dotenv").config();
const express = require("express");
const cors = require("cors");

const app = express();
const PORT = process.env.PORT || 4000;

app.use(cors());
app.use(express.json());

const healthRouter = require("./routes/health");
app.use("/api/health", healthRouter);

app.listen(PORT, () => {
  console.log(`ontime backend listening on port ${PORT}`);
});
