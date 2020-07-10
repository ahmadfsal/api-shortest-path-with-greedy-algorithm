module.exports = (app) => {
    const sanggars = require('../controllers/sanggar.controller')

    let router = require('express').Router()

    router.post('/', sanggars.create)
    router.get('/', sanggars.findAll)
    router.get('/:id', sanggars.findOne)
    router.put('/:id', sanggars.update)
    router.delete('/:id', sanggars.delete)
    router.delete('/', sanggars.deleteAll)

    app.use('/api/sanggars', router)
}
