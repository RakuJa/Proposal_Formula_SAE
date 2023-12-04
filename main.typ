#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Formula SAE proposal",
  subtitle: "A proposal for a cybersecurity focused Formula SAE project",
  subject: "Project proposal",
  guide: (
    name: "Stefano Chessa",
    designation: "Professor & Chair of the M.Sc. in Cybersecurity",
    department: "Computer Science"
  ),
  authors: (
    (
      name: "Daniele Giachetto", 
      department: "Department of Information Engineering",
      rollno: "647820"
    ),
    (
      name: "Edoardo",
      department: "Something",
      rollno: "694202",
    ),
  ),
  department: "Department of Information Engineering",
  institute: "Università degli studi di Pisa",
  degree: "Master of Science",
  year: "2022-2023",
  logo: "images/logo-unipi.png",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= The project


== Project scope and goals
The current objective of the team is to develop an autonomous vehicle. This project is also called "Driverless" and needs to meet high standards of reliability and security in order for the car to compete and the project to be deemed a success. This directly lead to this project scope and goal: allow the team to pursue the goal to increase the security of the codebase, mainly targeting development, test and build phases of the software.

== Driverless code structure

Before delving in the issues and solutions, we need to look at the code structure to better comprehend the many problems that the team is facing.
The main programming languages used are #strong("C, C++") known for many vulnerabilities linked with memory issues and #strong("Python") known for vulnerabilities linked with duck typing. Changing languages is not an easy tasks mainly because developers are not proficient with other programming languages and libraries and framework used are only available in those three programming languages.

== Issues found

- #strong("Lack of documentation:") results in fragmented codebase and obscure code;
- #strong("Lack of shared code style:") results in high amount of bugs, security issues and bad practices;
- #strong("Different development environments:") every developer has a different environment, without standardization and a clear guide;
- #strong("Lack of tests:") there are no tests, and everything is tested manually;
- #strong("Lack of versioning:") the code is versioned, but the releases are not. This leads to bugs and security hazard when different components interact;

== Objectives

=== Developer guidelines

Documentation is the first step to help a developer ensure high quality code. Those guidelines will contain installation guides and visualization of the "Driverless" project structure.  

=== Build environment

The "Driverless" project builds are complicated to say the least. Every developer needs to install in its own machine the ROS framework and all of the dependencies that the current project has. Right now this leads to builds effected by clashing libraries versions and in the production environment there could be libraries missing or with wrong versions. #linebreak()
To solve this problem we need to create an enviroment containing all the libraries required, that can be easily installed, replicated and in which development and builds can be done without issues. Further research on the subject is required before deciding the technology to be used.

=== Tests

Currently, all the tests are done by running the code in the production environment and manually checking the car behaviour. This process is dangerous, inefficient, and behaviours cannot be reproduced consistently. It could lead to security issues regarding the production enviroment, human errors and more commonly edge cases not tested. To reduce the vulnerabilities that can be found in the code we aim at introducing three different test methodologies:
- #strong("Unit testing:") testing the smallest component that can be isolated, usually only the body of a function and mocking the external function calls inside of it;
- #strong("Integration testing:") testing a functionality, from the input to the output mocking only calls to external software (like build dependencies);
- #strong("End to end testing:") testing the complete flow of the program, checking if all the components can work together.

=== CI/CD

 Planning a well-tought out continous integration and delivery pipeline will be beneficial to solve all of the previously discussed issues. Currently those are the phases that will be executed:

- #strong("Linting:") used to enforce rules on the codebase. It will be used to statically analyze the code, avoid bugs and possibly introduce rigid static type checkers to scripting languages;
- #strong("Code formatting:") used to automatically format the code following pre-established rules (ex: line length);
- #strong("Test:") unit tests, integration tests and end to end tests will be automatically executed to ensure code quality;
- #strong("Build:") using the standardized build environment, we can automate the building process. Doing so will also allow us to introduce versioning to the releases.