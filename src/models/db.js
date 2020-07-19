const dbConfig = require('../config/db-config')

const Sequileze = require('sequelize')
const sequelize = new Sequileze(dbConfig.DB, dbConfig.USER, dbConfig.PASSWORD, {
    host: dbConfig.HOST,
    dialect: dbConfig.dialect,
    operatorsAliases: false,
    pool: {
        max: dbConfig.pool.max,
        min: dbConfig.pool.min,
        idle: dbConfig.pool.idle,
        acquire: dbConfig.pool.acquire
    }
})

const db = {}

db.Sequileze = Sequileze
db.sequelize = sequelize

db.sanggars = require('./sanggar.model')(sequelize, Sequileze)
db.startingPoint = require('./starting-point.model')(sequelize, Sequileze)

module.exports = db