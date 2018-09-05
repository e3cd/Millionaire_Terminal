# Millionaire Terminal App

> A fun and frustrating trivia game!

## Getting Started 

These instructions will get you a copy of the project up and running on your local machine 

> Install Ruby gems (JSON, HTMLentities, rest-client)

> Clone repository onto your local machine

> While on cloned repo directory, input ruby run.rb 

## Running the Tests 

Implemented TDD (Test Driven Development)

## Planning 

### Brainstorming:
![brainstorming](https://github.com/e3cd/Millionaire_Terminal/blob/master/screenshots/Screen%20Shot%202018-09-05%20at%202.20.22%20pm.png)

### First Trello Board:

![First Board](https://github.com/e3cd/Millionaire_Terminal/blob/master/screenshots/Screen%20Shot%202018-09-04%20at%209.27.12%20am.png)

### Second Trello Board:

![Second Board](https://github.com/e3cd/Millionaire_Terminal/blob/master/screenshots/Screen%20Shot%202018-09-05%20at%202.52.27%20pm.png)

### User Story Board:

![User Stories](https://github.com/e3cd/Millionaire_Terminal/blob/master/screenshots/Screen%20Shot%202018-09-05%20at%202.50.25%20pm.png)

## Inital Design & Rationale

### Initial Design:

Defining key features that we as a team had come up with, further breaking them down into smaller, more manageable problems. 

Determined the features, and the processes behind each feature to ultimately produce the MVP.

![alt text](https://github.com/e3cd/Millionaire_Terminal/blob/master/screenshots/Screen%20Shot%202018-09-04%20at%2011.34.48%20am.png)
![second part](https://github.com/e3cd/Millionaire_Terminal/blob/master/screenshots/Screen%20Shot%202018-09-04%20at%2011.34.58%20am.png)
    

### Rationale: 

What had changed during the development process:

During the development of the program it became evident that we were not going to be able to implement all the features that we set to be in the MVP.

This was then dealt with by making the decision to forgo the feature in the MVP. 

Future developments were then included in the Readme.md 

### Why certain features were not implemented:

Soundtrack, sounds associated with actions
    
    Unable to find adequate gem, time constraints
      
Prize threshold amount
    
    Unable to call the class and its methods which provided the thresholds
    
Add lifelines

    Not considered part of MVP, feature was to be implemented later

Take money option

    Not considered part of MVP, feature was to be implemented later
      
Timer - Increase duration of timer after meeting prize threshold

    Not considered part of MVP, feature was to be implemented later. Inadequate gem 

## Built With

> Ruby Programming Language

> Ruby gems (JSON, HTMLentities, rest-client)

## Future Developments

### Features That Can be Implemented:
  
A cash out option that would allow for players to win a certain amount of money after getting a question correct

To play sound when the game starts, at the beginning of each question, when an answer is selected, if the answer is correct or not as well as when the game finishes

To create a threshold amount that would be the baseline amount that you would win if you reached it
To display that threshold amount on the screen 

Import questions that increase in difficulty as the game progresses.

Adding a timer for each question so users feel encouraged to select an answer 

Saving the users name and score to a local file which then could be turned into a scoreboard 
The scoreboard would show at the end of every game 

### Code Design:

The way that the information from the JSON file is stored
When the game is first initialized in retrieves that information from the http and then saves it on a local file which would greatly increase loading times.
Doing this would change most of the code, however, it would be beneficial as stated above
This would allow for offline play of the game

## Possible Outcomes & Broader Impact

It may offend people due insesitive questions as well as effecting other people around the area.

## Authors 

William Francis & Allan Gao

## Acknowledgments 
