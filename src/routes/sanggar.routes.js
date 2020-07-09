module.exports = (app) => {
    const sanggars = require('../controllers/sanggar.controller')

    var router = require('express').Router()

    // Create a new Tutorial
    router.post('/', sanggars.create)

    // Retrieve all sanggars
    router.get('/', sanggars.findAll)

    // Retrieve all published sanggars
    // router.get('/published', sanggars.findAllPublished)

    // Retrieve a single Tutorial with id
    router.get('/:id', sanggars.findOne)

    // Update a Tutorial with id
    router.put('/:id', sanggars.update)

    // Delete a Tutorial with id
    router.delete('/:id', sanggars.delete)

    // Create a new Tutorial
    router.delete('/', sanggars.deleteAll)

    app.use('/api/sanggars', router)
}
