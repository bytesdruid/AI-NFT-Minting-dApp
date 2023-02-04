require('babel-register');
require('babel-polyfill');
require('dotenv').config();

module.exports = {
  networks: {
    // Useful for testing. The `development` name is special - truffle uses it by default
    development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 7545,
      network_id: "*",       // Any network (default: none)     
      },
  },
  contracts_directory: './src/contracts/',
  contracts_build_directory: './src/abis/',
  compilers: {
    solc: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  }
}
