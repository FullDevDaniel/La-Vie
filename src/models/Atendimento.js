const db = require('../database/db')
const { DataTypes } = require('sequelize')
const Paciente = require('./Paciente')
const Psicologos = require('./Psicologos')

const Atendimentos = db.define(
  'Atendimentos',
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,                
  },
    psicologo_id: {
      type: DataTypes.INTEGER,
      references: {
        model: Psicologos,
        key: 'id'
      }
    },
    paciente_id: {
      type: DataTypes.INTEGER,
      references: {
        model: Paciente,
        key: 'id'
      }
    },
    data_atendimento: {
      type: DataTypes.DATE
    },
    observacao: {
      type: DataTypes.STRING
    },
    createdAt:{
      type: DataTypes.DATE
  },
  updatedAt:{
      type: DataTypes.DATE
  },
  },
  {
    tableName: 'atendimento'
  }
)

module.exports = Atendimentos
