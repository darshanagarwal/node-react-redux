module.exports = (sequelize, Sequelize) => {
  const Products = sequelize.define("products", {
    title: {
      type: Sequelize.STRING
    },
    price: {
      type: Sequelize.INTEGER
    },
    image: {
      type: Sequelize.STRING
    }
  });

  return Products;
};
