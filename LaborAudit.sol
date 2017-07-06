pragma solidity ^0.4.0;
contract LaborAudit {

        uint256 noOfQuestions;
        address completionUser;
        uint256 maxWorkingHours;
        uint256 hoursWorked;
        uint256 maxWagePerHour;
        uint256 currentWage;
        bool  childLabor;
        bool benefits;
        bool abuse;
        uint minAmount;
        uint maxWage;
        address owner;
        uint maxAmount;
        uint maxParticipants;

    
    function LaborAudit(){
        noOfQuestions = 6;
        maxWorkingHours = 240;
        maxWage = 7;
        minAmount = 1;
        owner = msg.sender;
        maxAmount = 100;
        maxParticipants = 30;
        

    }
       struct Detail {
        string state;
        string country;
        string manufName;
    }
    
        mapping(address => Detail) details;
        

                    event logIssues(address sender,uint amount);

    
        modifier onlyowner(){
        if(owner == msg.sender){
            _;
        }else{
        throw;
        }
    }
    
    
       

        function workingHours(uint workinghours) payable{
            if(workinghours > maxWorkingHours){
                logIssues(msg.sender,maxWorkingHours);
                
                
            }else{
                /// Reward User with points
                //Unlock and Handle exception
                msg.sender.send(minAmount);
                maxAmount = maxAmount -10;
                maxParticipants = maxParticipants -1 ;
            }
            
        }


        function wages(uint wages) payable{
            if(wages < maxWage){
                logIssues(msg.sender,wages);
                ///OAR = OraclizeAddrResolverI(0x56ad7524c192817b9f78ee117fdac186d5b3c995);
                ///oraclize_query("URL", "http://domain.com/getData/?data=Testing");
            }else{
                /// Reward User with points
                //Unlock and Handle exception
                msg.sender.send(minAmount);
            }
            
        }
            function childlabor(bool childlabor) payable{
            if(childlabor){
                logIssues(msg.sender,1);
                ///OAR = OraclizeAddrResolverI(0x56ad7524c192817b9f78ee117fdac186d5b3c995);
                ///oraclize_query("URL", "http://domain.com/getData/?data=Testing");
                
            }else{
                /// Reward User with points
                //Unlock and Handle exception
                msg.sender.send(minAmount);
                maxAmount = maxAmount -10;
                maxParticipants = maxParticipants -1 ;
            }
            
        }
        
            function daycare(bool daycare) payable{
            if(daycare){
                logIssues(msg.sender,1);
                ///OAR = OraclizeAddrResolverI(0x56ad7524c192817b9f78ee117fdac186d5b3c995);
                ///oraclize_query("URL", "http://domain.com/getData/?data=Testing");
                
            }else{
                /// Reward User with points
                //Unlock and Handle exception
                msg.sender.send(minAmount);
                maxAmount = maxAmount -10;
                maxParticipants = maxParticipants -1 ;
            }
            
        }

        
    
        
    
         function kill() constant onlyowner{
     
        suicide(owner);
     
    }
    
     function () payable {
         Detail sender = details[msg.sender]; // assigns reference
         sender.state = "CA";
         sender.country = "USA";
         sender.manufName = "Jabil";
        }
    
        }


    

  
