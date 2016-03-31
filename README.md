## SWE4403 - Assignment 2
### David Leger | 3475370

***

1. A web service mashup is a web client application which makes use of multiple web services in a single application in a way which allows the web services to work off of each other and create a new service.  
A web service mashup I recently built with AngularJS uses Yelp’s Search API and Google Maps to list business near a given location and fitting a given topic, and display geographically where the businesses are located.  
URL: [davidleger95.github.io/tubular-challenge](http://davidleger95.github.io/tubular-challenge)  
- **Scenario 1**  
Source: Client application sends an HTTP request to Yelp Search API with location and topic parameters  
Stimulus: An HTTP request.  
Artifact: Client application.  
Environment: known prior to runtime  
Response: Yelp Search API responds successfully with the requested set of data.  
Response Measure: Results contain a list of businesses nearby the given location and fitting the keyword.  
- **Scenario 2**  
Source: Client application calculates and passes viewport coordinates to Google Maps.  
Stimulus: New map center coordinates.  
Artifact: Client application.  
Environment: known prior to runtime  
Response: Google Maps renders new view of map with the given coordinates.  
Response Measure: The map displays all locations within the view.  
- **Scenario 3**  
Source: Client application passes business location coordinates from Yelp Search API data to Google Maps.  
Stimulus: New array of location coordinates.  
Artifact: Client application.  
Environment: known prior to runtime  
Response: Google Maps places pins on map view for given array of locations.  
Response Measure: Pins are rendered and placed at the correct location.  

***

2. ATMs must interoperate with the bank’s online banking application, and the bank’s client account database. In order to accomodate these systems, the bank’s system should follow a client-server architecture, where the client applications handle most of the logic in the system, and the servers only handle data transfer and authentication. With the server only handling a few tasks it can withstand much higher network traffic from the different client applications. Also, since all data is kept centralized, the system will experience fewer issues with data redundancy.

***

3. Split module is used in this subway system by separating tasks into indepentant modules. It increases semantic coherence by separating modules by function; ticket machines handle tickets and change machines handle change.  
These modifications increase overall availability of the ticket machines by enforcing that users provide exact change which will decrease the amount of time a user will occupy a ticket machine because it defers change tasks to a change machine. This works if users are likely to have exact change, such as with a ticket price  of $5.00 (people will likely have exact change for $5.00 because it is a round number). However, with a ticket price of $5.35, people will be less likely to have exact change, causing a bottleneck in the system at the change machines because there are fewer change machines than ticket machines.  
- **Scenario**  
Source: System Admin  
Stimulus: Increase system availability and performance  
Artifacts: Change machines, ticket machines  
Environment: Run time  
Response: Separate functionality into change machines and ticket machines.  
Response measure: Always have a ticket machine available, and increase throughput to 8 people every 10 seconds.

***

4. Encapsulation: Wrappers allow components to interface with other components without dependancy on implementation. This lowers the chance that changes made in one component don’t affect other components in the system.

***

5. **Scenario**  
Source: Airport dispatcher.  
Stimulus: Airplane is scheduled to land.  
Artifact: Airplane, Airport  
Environment: normal operations  
Response: Flight arrives at or before the scheduled time.  
Response measure: Latency of 5 minutes.

***

6. **Scenario**  
Source: Customer  
Stimulus: Customer uses ATM to withdawl money.  
Artifact: ATM  
Environment: normal operations  
Response: ATM gives customer money and prints receipt  
Response measure: The machine gives money and prints recipt within 5 seconds of the request.  
- This can be achieved by loading all of a customer’s accunt data when they first enter their PIN and while they are navigating through the UI, which would allow time for data to come in even with a worst-case latency.

***

7. Latency is decreased because the data does not have to travel far to get to the client. Jitter is small because there is less distance to travel. Miss rate is reduced because requests to have to travel far, decreasing the probablitity of packets being dropped by routers.

***

8. Stimulus Source: A customer  
Stimulus: Customer enter’s wrong PIN for account  
Artifact: ATM system  
Environment: normal operation  
Response: Access to account is denied.  
Response measure: All attempts with the wrong credentials are denied. Only 5 consecutive wrong attempts can be made before a card is deactivated.

***

9. Stimulus Source: A student  
Stimulus: Student tries to modify their mark in a course  
Artifact: Course record/system  
Environment: normal operation; student logged into system on a public network  
Response: Student is denied access to modifying grades and system administrator is notified of the attempt.  
Response measure: No student may be allowed to modify their course grades. If a student does manage change their grade, system admins are notified immediately.  
- To add security to this system, the following tactics can be used: Create levels of user privledge which only allows professors to edit marks and never students, which prevents student accounts from having the ability to edit marks. Use double authentication when a professor changes marks of students, which prevents a hacked professor’s account from being able to edit marks. Encrypt the marks data using a hashing scheme so that raw data from the system cannot be drectly modified. 

***

10. Abstracting data sources would increase ability to test and modify a system because accessing data sources only need to be tested once and to modify a data source, it would only need to meet the critera of the abstracted data source without need for further building/testing of new components and modules to handle these modifications. We can see this tactic used in RESTful web services, where there is one abstracted data source and many client applications, all using the web service in a different way.

***

11. Stimulus Source: An acceptance tester  
Stimulus: Running tests for functionality of deposit, withdrawl, authentication features.  
Artifact: Code which is executed/tested for requirements  
Environment: runtime  
Response: Tests return successfully.  
Response measure: Tests fulfill all critera for the given requirements.  
Testing the ATM would be done through automated testing scripts to ensure rigourous testing has been completed and all functionality is achieved.

***

12. Performing load testing on the social network with an automated testing program would be benefitial. The test program would hit the server repeatedly for an extended period of time, and watch for performance decreases.  
- **Scenario**  
Stimulus Source: Load Test Program   
Stimulus: Load test program hits server repeatedly to simulate a large number of users  
Artifact: The server  
Environment: runtime  
Response: Requests made to the server are processed and response is sent back to the test program for verification.  
Response measure: The server responds to 99.9% of requests made by the test program and does not crash under heavy usage.

***

13. Stimulus Source: A customer  
Stimulus: Customer attempts to deposit money to their account.  
Artifact: ATM system  
Environment: runtime  
Response: Customer is easily able to deposit money and recieves confirmation feedback (reciept) that the deposit was succesful. 
Response measure: The customer is able to deposit money without confusion about the procedure and/or status of the deposit.

***

14. Usability can be traded for security in terms of what a user can do in the system without admin approval. Limiting a user’s functional abilities can increase the security of a system but it also decreases usability. Also with user athentication, entering a password hinders the ability of a user to login to your system, thus decreasing overall usability.  
In terms of performance, usability might be increased with the implementation of a GUI, but it will decrease system performance by allocating resources to view rendering rather than functionality.

***

15. [www.google.com](www.google.com) and [www.yahoo.com](www.yahoo.com])  
Stimulus: User searches “democratic primary election results”.  
Response: Show search results.  
Response measure: The user is shown the information they are searching for on first page.  
  - [www.google.com](www.google.com): Search results are displayed, but also relavant information is shown in the form of statistics and charts which are easily interpreted by the user.
  - [www.yahoo.com](www.yahoo.com]): Only search results are shown and the user must visit another site to find the information they were searching for.
  - Google’s interface interprets the user’s search and is proactive in delivering the correct information as quickly as possible in an way that is easy to consume. Yahoo’s interface is more reactive, forcing the user to do more in order to get the information they were searching for.

***

16. In today’s world, many software users have several different types of devices —  mobile, desktop, tablets, watches, etc. — all with different operating systems. So it is important to focus on **portability**, meaning that software should be made able to run on a variety of device types.  
- **Scenario:**  
Stimulus: Operating system of the user  
Stimulus source: OS attempts to run software  
Artifact: software system  
Environment: runtime  
Response: System runs on the device.  
Response measure: System is able to run with a full feature-set on the given device without crashing due to OS compatability.

***

17. {{ something about SOA… }}

***

18. {{ something about search engine capability…? }}

***

19. Layered architecture helps to abstract common services by deviding functionality into layers such as a data layer, a data manager layer, a business logic layer, a user layer, etc. Encapsulation is used as a means separate to make modular code which can interface between layers. An intermediary, such as the data manager layer, is used to mitigate dependancy between layers.
