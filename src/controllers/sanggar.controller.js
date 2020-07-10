const db = require('../models/db')
const Sanggar = db.sanggars

exports.create = (req, res) => {
    // Validate request
    if (!req.body) {
        res.status(400).send({
            message: 'Content can not be empty!'
        })
        return
    }

    const sanggar = {
        name: req.body.name,
        verteks: req.body.verteks,
        lat: req.body.lat,
        lng: req.body.lng,
        address: req.body.address,
        distance: req.body.distance,
        short_description: req.body.short_description
    }

    Sanggar.create(sanggar)
        .then((data) => {
            res.send(data)
        })
        .catch((err) => {
            res.status(500).send({
                message:
                    err.message ||
                    'Some error occurred while creating the sanggar.'
            })
        })
}

exports.findAll = (req, res) => {
    Sanggar.findAll()
        .then((data) => {
            res.send(data)
        })
        .catch((err) => {
            res.status(500).send({
                message:
                    err.message ||
                    'Some error occurred while retrieving sanggars.'
            })
        })
}

exports.findOne = (req, res) => {
    const id = req.params.id

    Sanggar.findByPk(id)
        .then((data) => {
            res.send(data)
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Error retrieving sanggar with id=' + id
            })
        })
}

exports.update = (req, res) => {
    const id = req.params.id

    Sanggar.update(req.body, {
        where: { id: id }
    })
        .then((num) => {
            if (num == 1) {
                res.send({
                    message: 'sanggar was updated successfully.'
                })
            } else {
                res.send({
                    message: `Cannot update Sanggar with id=${id}. Maybe Sanggar was not found or req.body is empty!`
                })
            }
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Error updating sanggar with id=' + id
            })
        })
}

exports.delete = (req, res) => {
    const id = req.params.id

    Sanggar.destroy({
        where: { id: id }
    })
        .then((num) => {
            if (num == 1) {
                res.send({
                    message: 'Sanggar was deleted successfully!'
                })
            } else {
                res.send({
                    message: `Cannot delete Sanggar with id=${id}. Maybe Sanggar was not found!`
                })
            }
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Could not delete Sanggar with id=' + id
            })
        })
}

exports.deleteAll = (req, res) => {
    Sanggar.destroy({
        where: {},
        truncate: false
    })
        .then((nums) => {
            res.send({
                message: `${nums} Sanggar were deleted successfully!`
            })
        })
        .catch((err) => {
            res.status(500).send({
                message:
                    err.message ||
                    'Some error occurred while removing all Sanggar.'
            })
        })
}