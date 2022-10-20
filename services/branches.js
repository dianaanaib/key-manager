const db = require('./db');
const helper = require('../helper');

async function getBranches(){
  const res = await db.query(
    `SELECT id, street FROM branches`
  );
  const data = helper.validateResponse(res);

  return {
    data
  }
}

module.exports = {
  getBranches
}