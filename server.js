const ronin     = require( 'ronin-server' )
const mocks     = require( 'ronin-mocks' )
 
const server = ronin.server()
 
// server.use( '/', mocks.server( server.Router(), false, true ) )
// server.start()

server.use( '/tree', (req, res) => {
    return res.json({ "myFavouriteTree": "Maple" })
  }) 
server.use( '/', mocks.server( server.Router(), false, true ) )
server.start()