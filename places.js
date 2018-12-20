const axios = require('axios')

exports.query = function(req, res){
  axios.get(`https://maps.googleapis.com/maps/api/place/textsearch/json?query=${req.query.query}&key=${process.env.GOOGLE_PLACES_API_KEY}`)
  .then(response => {
    res.json(response.data);
  })
  .catch(error => {
    res.json(error);
  });
};
