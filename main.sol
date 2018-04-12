pragma solidity ^0.4.21;

contract SupplyChain {

    struct Survey {

        string name;
        string country;
        string planet;
    }

    struct Actor {

        string companyName;
        string contactInfo;
        string products;
    }

    Survey[] public surveys;
    Actor[] public actors;
    

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

    function newActor(string _companyName, string _contactInfo, string _products) public returns (uint actorID){
        actorID = actors.length++;
        Actor storage a = actors[actorID];
        a.companyName = _companyName;
        a.contactInfo = _contactInfo;
        a.products = _products;
        return actorID;
    }

    function totalActors() public view returns (uint){
        return actors.length;
    }   

}