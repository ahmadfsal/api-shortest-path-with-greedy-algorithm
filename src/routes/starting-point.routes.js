module.exports = (app) => {
    const startingPoint = require('../controllers/starting-point.controller')

    let router = require('express').Router()

    router.post('/', startingPoint.create)
    router.get('/', startingPoint.findAll)
    router.get('/:id', startingPoint.findOne)
    router.put('/:id', startingPoint.update)
    router.delete('/:id', startingPoint.delete)
    router.delete('/', startingPoint.deleteAll)

    app.use('/api/starting-point', router)
}
