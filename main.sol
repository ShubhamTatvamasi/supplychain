pragma solidity ^0.4.21;

contract SupplyChain {

    struct Survey {

        string name;
        string country;
        string planet;
    }

    Survey[] public surveys;

    function SupplyChain() public {
        
    }

    function newSurevy(string _name, string _country, string _planet) public returns (uint surveyID){
        surveyID = surveys.length++;
        Survey storage s = surveys[surveyID];
        s.name = _name;
        s.country = _country;
        s.planet = _planet;
        return surveyID;
    }

    function totalSurveys() public view returns (uint){
        return surveys.length;
    }   

}