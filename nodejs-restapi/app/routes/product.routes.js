module.exports = app => {
  const products = require("../controllers/product.controller.js");

  var router = require("express").Router();

  // Retrieve all products
  router.get("/", products.findAll);

  router.post("/login", products.login);

  app.use('/api/product', router);
};
