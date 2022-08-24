  #include "hellomake.h"
  #include <iostream>
  
  int main() {

    std::cout << "Printing hello" << std::endl;

    // call a function in another file
    myPrintHelloMake();

    return(0);
  }