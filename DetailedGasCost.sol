//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

//storage report

contract structure{
    struct  Book{
        string title;
        string author;
        uint bookID;
        uint price;
    }
    //define a struct
    Book book;

    function setBook()public{
        book = Book("Blockchain for beginners","Ineuron",4,1000);
    }
     function gettitle() public view returns(string memory){
       return book.title;
    }

      function getauthor() public view returns(string memory){
        return book.author;
    }

    function getBookId() public view returns(uint){
        return book.bookID;
    }

    function getprice() public view returns(uint){
        return book.price;
    }
}


// gas cost analysis
//totalgas cost-388592
//execution gast cost-337906
// deployment gas cost-337906

// setBook-gas->127442,transaction cost->110819,exceution cost-110819
//gettitle->execution cost ->24533
//getauthor->execution cost->24577


//memory
contract structure2{
    struct  Book{
        string title;
        string author;
        uint bookID;
        uint price;
    }
    //define a struct
    Book book;

    function setBook()public{
        book = Book("Blockchain for beginners","Ineuron",4,1000);
    }
     function gettitle(string memory title) public pure returns(string memory){
       return title;
    }

      function getauthor(string memory author) public pure returns(string memory){
        return author;
    }

    function getBookId() public view returns(uint){
        return book.bookID;
    }

    function getprice() public view returns(uint){
        return book.price;
    }
}

// gas cost analysis
//total gas cost-428165
//execution gast cost-372317
// deployment gas cost-372317

// setBook-gas->127442,transaction cost->110819,exceution cost-110819
//gettitle->execution cost ->25592
//getauthor->execution cost->25636


//calldata
contract structure3{
    struct  Book{
        string title;
        string author;
        uint bookID;
        uint price;
    }
    //define a struct
    Book book;

    function setBook()public{
        book = Book("Blockchain for beginners","Ineuron",4,1000);
    }
     function gettitle(string calldata title) public pure returns(string calldata){
     return title;
    }

      function getauthor(string calldata author) public pure returns(string calldata){
        return author;
    }

    function getBookId() public view returns(uint){
        return book.bookID;
    }

    function getprice() public view returns(uint){
        return book.price;
    }
}


// gas cost analysis
//totalgas cost-364752
//execution gast cost-317175
// deployment gas cost-317175

// setBook-gas->127442,transaction cost->110819,exceution cost-35733
//gettitle->execution cost ->22651
//getauthor->execution cost->22491