const db = require("../models");
const Product = db.products;
const User = db.users;

exports.login = (req, res) => {
  if (req.body.userName == "" || req.body.userName == undefined || req.body.password == "" || req.body.password == undefined) {
    res.status(400).send({
      status: false,
      message: "Missing field"
    });
  }
  User.findOne({ where: { email: req.body.userName, password: req.body.password } })
    .then(data => {
      if (data) {
        return res.send({ status: true, data: data });
      } else {
        return res.send({ status: false, message: "Invalid credential" })
      }
    })
    .catch(err => {
      res.status(500).send({
        status: false,
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    });
};

exports.findAll = (req, res) => {
  Product.findAll()
    .then(data => {
      res.send({ status: true, data: data });
    })
    .catch(err => {
      res.status(500).send({
        status: false,
        message:
          err.message || "Some error occurred while retrieving tutorials."
      });
    });
};

