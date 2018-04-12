pragma solidity ^0.4.21;

contract SupplyChain {

    struct Survey {

        string name;
        string country;
        string planet;
    }

    struct Publisher {

        string companyName;
        string contactInfo;
        string products;
    }

    struct Consultant {

        string name;
        string contactInfo;
        string aboutMe;
    }

    Survey[] public surveys;
    Publisher[] public publishers;
    Consultant[] public consultants;
    
    mapping (address=>string) public companyName;
    mapping (address=>bool) public isPublisher;
    mapping (address=>bool) public isConsultant;
    
    
    function SupplyChain() public {
        
    }

    function newSurevy(string _name, string _country, string _planet) public returns (uint surveyID){
        surveyID = surveys.length++;
        Survey storage s = surveys[surveyID];
        companyName[msg.sender] = _name;
        s.name = _name;
        s.country = _country;
        s.planet = _planet;
        return surveyID;
    }

    function newPublisher(string _companyName, string _contactInfo, string _products) public returns (uint publisherID){
        publisherID = publishers.length++;
        Publisher storage p = publishers[publisherID];
        isPublisher[msg.sender] = true;
        p.companyName = _companyName;
        p.contactInfo = _contactInfo;
        p.products = _products;
        return publisherID;
    }

    function newConsultant(string _name, string _contactInfo, string _aboutMe) public returns (uint consultantID){
        consultantID = consultants.length++;
        Consultant storage c = consultants[consultantID];
        isConsultant[msg.sender] = true;
        c.name = _name;
        c.contactInfo = _contactInfo;
        c.aboutMe = _aboutMe;
        return consultantID;
    }

    function totalSurveys() public view returns (uint){
        return surveys.length;
    }   

    function totalPublishers() public view returns (uint){
        return publishers.length;
    }

    function totalConsultants() public view returns (uint){
        return consultants.length;
    }

}