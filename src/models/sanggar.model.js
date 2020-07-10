module.exports = (sequelize, Sequelize) => {
    const Sanggar = sequelize.define('sanggars', {
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
            type: Sequelize.STRING
        },
        short_description: {
            type: Sequelize.STRING(255)
        }
    })

    return Sanggar
}
