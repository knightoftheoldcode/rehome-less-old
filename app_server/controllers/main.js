/* GET home page. */
const index = function(req, res, next) {
  res.render('index', { title: 'rehome' });
};

module.exports = {
  index
}