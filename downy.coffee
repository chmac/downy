express = require 'express'

app = express()

# This is ugly... :-)
twitterUsername = process.argv[2]

app.all '*', (req, res, next) ->
  res.send 503, '<html><head><title>Temporarily down...</title></head><body><h1>Apologies...</h1><p>Sorry, this server is down right now. We are working on it right now. Check <a href="https://twitter.com/' + twitterUsername + '">twitter</a> for the latest.</p></body></html>'

app.listen 80
