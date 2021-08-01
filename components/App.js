import React, {Component} from 'react';
import Web3 from Web3;
import SiamToken from '/build/contracts/SiamSale.json';

class App extends Component{
    async componentWillMount(){
        await this.loadWeb3()
        await this.loadBlockchainData()
    }

    async loadWeb3(){
        if(window.ethereum){
            window.web3 = new Web3(window.ethereum)
            await window.ethereum.enable()
        }
        else if(window.web3){
            window.web3 = new Web3(window.web3.currentProvider)
        }
        else{
            window.alert('Non-Ethereum browser detected. You should consider trying Metamask')
        }
    }

    async loadBlockchainData(){
        const web3 = window.web3
        const accounts = await web3.eth.getAccounts()
        this.setState({accounts: account[0]})
        const siamTokenAddress = ""
        const siamToken = new web3.eth.Contract()
    }
}