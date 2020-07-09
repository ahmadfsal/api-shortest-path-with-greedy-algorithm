module.exports = (sequelize, Sequelize) => {
    const Sanggar = sequelize.define('sanggar', {
        name: {
            type: Sequelize.STRING
        },
        verteks: {
            type: Sequelize.STRING
        },
        lat: {
            type: Sequelize.STRING
        },
        lng: {
            type: Sequelize.STRING
        },
        address: {
            type: Sequelize.STRING
        },
        distance: {
            type: Sequelize.NUMBER
        }
    })

    return Sanggar
}
