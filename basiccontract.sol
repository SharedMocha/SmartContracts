///Solidy Sample Basic Contract -1
pragma solidity ^0.4.0;


contract MyFirstContract{
    
    uint myVariable;
    
    address owner;
    
    modifier onlyowner(){
        if(owner == msg.sender){
            _;
        }else{
        throw;
        }
    }
    
    function MyFirstContract() payable{
        myVariable = 5;
        owner  = msg.sender;
        
    }
    
    function getMyFirstValue() constant returns(uint){
        return myVariable;
        
    }
        function getOwner() constant returns(address){
            
                        return owner;

        
    }
    
    function setMyFirstValue(uint newvalue){
    
        myVariable = newvalue;
    }
        function getBalance() constant returns(uint){
            if(msg.sender == owner){
        return this.balance;
            }else{
            throw;
            }
        
    }
    
     function getBalanceForOwner() onlyowner constant returns(uint){
         
        return this.balance;
           
        
    }
    
    function kill() onlyowner{
     
        suicide(owner);
     
         
        
    }
    
    function () payable{
    }
    

    
}
