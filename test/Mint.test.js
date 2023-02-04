const { result } = require("lodash");

require('chai')
    .use(require('chai-as-promised'))
    .should()

const Mint = artifacts.require('./Mint');

contract('Mint', (accounts) => {
    describe('deployment', () => {
        it('tracks the name', async () => {
            const mint = await Mint.deployed()
            const name = await mint.name()
            name.should.equal('AI Minting Contract')
        })
    })
})