const db = require('../models/db')
const StartingPoint = db.startingPoint

exports.create = (req, res) => {
    // Validate request
    if (!req.body) {
        res.status(400).send({
            message: 'Content can not be empty!'
        })
        return
    }

    const startingPoint = {
        name: req.body.name,
        verteks: req.body.verteks,
        lat: req.body.lat,
        lng: req.body.lng,
        address: req.body.address,
        distance: req.body.distance,
        short_description: req.body.short_description
    }

    StartingPoint.create(startingPoint)
        .then((data) => {
            res.send(data)
        })
        .catch((err) => {
            res.status(500).send({
                message:
                    err.message ||
                    'Some error occurred while creating the StartingPoint.'
            })
        })
}

exports.findAll = (req, res) => {
    StartingPoint.findAll()
        .then((data) => {
            res.send(data)
        })
        .catch((err) => {
            res.status(500).send({
                message:
                    err.message ||
                    'Some error occurred while retrieving StartingPoints.'
            })
        })
}

exports.findOne = (req, res) => {
    const id = req.params.id

    StartingPoint.findByPk(id)
        .then((data) => {
            res.send(data)
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Error retrieving StartingPoint with id=' + id
            })
        })
}

exports.update = (req, res) => {
    const id = req.params.id

    StartingPoint.update(req.body, {
        where: { id: id }
    })
        .then((num) => {
            if (num == 1) {
                res.send({
                    message: 'StartingPoint was updated successfully.'
                })
            } else {
                res.send({
                    message: `Cannot update StartingPoint with id=${id}. Maybe StartingPoint was not found or req.body is empty!`
                })
            }
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Error updating StartingPoint with id=' + id
            })
        })
}

exports.delete = (req, res) => {
    const id = req.params.id

    StartingPoint.destroy({
        where: { id: id }
    })
        .then((num) => {
            if (num == 1) {
                res.send({
                    message: 'StartingPoint was deleted successfully!'
                })
            } else {
                res.send({
                    message: `Cannot delete StartingPoint with id=${id}. Maybe StartingPoint was not found!`
                })
            }
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Could not delete StartingPoint with id=' + id
            })
        })
}

exports.deleteAll = (req, res) => {
    StartingPoint.destroy({
        where: {},
        truncate: false
    })
        .then((nums) => {
            res.send({
                message: `${nums} StartingPoint were deleted successfully!`
            })
        })
        .catch((err) => {
            res.status(500).send({
                message:
                    err.message ||
                    'Some error occurred while removing all StartingPoint.'
            })
        })
}