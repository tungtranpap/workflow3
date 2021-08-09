# Automated Test framework

Bringing Robot Framework (RF) with Selenium.
We offer a better solution for everybody in the team who wants to implement tests with ease.

**Installation**  
[Download & install python3 & pip3](https://www.python.org/)
```bash
cd automated test framework
pip3 install -r requirements.txt
```

**Structure** (TBD)  

    ├──Testsuites
        ├── API-tests                               # Contains all test automated test scripts for API tests
            ├── Data                                # Data for api tests
            ├── TestSuites                          # All test suites for api tests
        ├── E2E-tests                               #Contains all test automated test scripts for e2e tests
            ├── Data                                # Data for automated test
            ├── TestSuites                          # All test cases will be stored here under test suite
            ├── Locator                             # Store all element locators
            ├── Resources                           # RF User defined keywords which will be used in the `Test Suites` or othher keywords
         ├── Reports                                # Optional (editor MUST NOT commit this folder to the repo) - contains test reports
    ├── .gitignore                          
    ├── Makefile                            # Bash/shell utility commands
    ├── README.md
    └── requirements.txt                    # All python libraries/dependencies that need to be installed in advance 

**Usage**  
There are 2 ways you can run a test:  
- *Test suite:*
```bash
#run all testcases in <file_name>.robot
robot <directory>\<file_name>.robot
EX:
    robot TestSuites\E2E-tests\E2E-Testsuites\Product_Page.robot
```

- *Test case:* 
```bash
#run "<testcase_name>" in <file_name>.robot
robot --test "<testcase_name>" <directory>\<file_name>.robot
EX:
    robot --test "<testcase_name>" TestSuites\E2E-tests\E2E-Testsuites\Product_Page.robot
#run all testcase tagged <tag_name> in <file_name>.robot
robot --include <tag_name> <directory>\<file_name>.robot
EX:
    robot --include <tag_name> TestSuites\E2E-tests\E2E-Testsuites\Product_Page.robot
```

**Test coverage**  
TBD. Will be integrated with a Test management system to show numbers here.

**Editor**  
Pycharm

**Code Snippet**
TBD

**CICD Integration**  
We'd like to integrate our test framework with AWS Code Pipeline or take advantage of docker to install