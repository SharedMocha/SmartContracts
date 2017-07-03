pragma solidity ^0.4.0;


contract ReuseContract{
    
   address owner;
    
    modifier onlyowner(){
        if(owner == msg.sender){
            _;
        }else{
        throw;
        }
    }
    
    
    function kill() onlyowner{
     
        suicide(owner);
     
         
        
    }
    
    

    
}
