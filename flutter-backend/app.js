require("dotenv").config();
require("express-async-errors");
const express = require("express");
const mongoose = require("mongoose");
const bodyParser = require("body-parser");
const notFoundMiddleware = require("./middleware/not-found");
const errorHandlerMiddleware = require("./middleware/errorHandler");
const cors = require("cors");
const connectDB = require("./db/connect");
const app = express();
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

//routes
app.use("/api/v1/", require("./routes/pizza"));
app.use("/api/v1/", require("./routes/burger"));
app.use("/api/v1/", require("./routes/pasta"));
app.use("/api/v1/", require("./routes/drinks"));

//error handlers
app.use(notFoundMiddleware);
app.use(errorHandlerMiddleware);
//server config
const port = process.env.PORT || 3000;
const start = async () => {
  try {
    await connectDB(
      "mongodb+srv://charbelcg:bfEwRxpGkIp0qz8f@cluster0.v6soh8z.mongodb.net/farah?retryWrites=true&w=majority"
    );
    app.listen(port, () => {
      console.log("Server is listening on port 3000...");
    });
  } catch (err) {
    console.log(err);
  }
};

start();
