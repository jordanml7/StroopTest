Stroop Test
By Jordan Lueck
05/10/2017

The purpose of this project is to test individuals' reaction times in various circumstances and compare that data with collected data about the user.
The program will prompt the user to enter a response to the following 9 questions:
    Enter Your First Name ::
    Enter Your Age ::
    Enter Your Grade (K-16) ::
    How many hours do you spend watching TV a day on average?
    How many hours of sleep do you get a night on average?
    How many hours do you spend doing homework a day on average?
    How many hours do you spend on the internet a day on average?
    How many hours do you spend on your phone a day on average?
    How important is school to you? (1 - not important, 10 - very important)

Once the user has entered this information, they will be guided through a series of 5 tests, each repeated multiple times, that ask them to perform various tasks and gather the time it takes them to complete said task.
The program then saves this individual's data into the file containing all previous users' data.

The program then automatically generates a text file that gives the user various statistics of how their response times stacked up against all previous users.
Finally, the program runs a data correlation GUI which allows the user to compare various criteria from all the collected data, such as age and reaction time, using multiple types of plots.
The user can also fit a best fit line, polynomial, power function or exponential function to the data to check for any correlations.

----

This program includes many different functions, divided into categories.
The primary run file is entitled runStroopTest. This file calls the other functions stored in various directories.

The directory entitled Routines includes various important functions that will be used throughout the code, including the function runStudy, which is run by runStroopTest and includes the bulk of the actual test phase, including laying out when each type of test is presented and how many times each test runs.
The directory entitled Tests includes all 5 types of reaction time tests that are presented to the user in the program. These are :
    A letter locating test
    A button pressing test
    A color identifying test
    A keyboard typing test
    A tone response test
The directory entitled GUIs includes both GUIDE-generated user interfaces - that for collecting the user's categorical data and that for viewing plots of the data and checking for correlations.
The directory Descrips includes functions that run descriptions of each type of test, descriped above.
The directory Best Fits includes the 3 best fit functions that are called from the Data Correlations GUI.

----

To run an example of this code, you must take the test. Start on runStroopTest file and press run, then follow the steps.
Your final results will be added to the TotalData file, which includes all previous runs, and this will be the data used for graphing correlations in the GUI.
Since there is not a significant amount of data in the TotalData file, and thus it may be hard to see if the plots etc. are working correctly, you can use the randDataGeneration.m file which will randomly generate 100 sets of data, including randomized reaction times, to fill the TotalData structure.
If you then modify the DataCorrelations.m file for the GUI so that it loads randData and not TotalData, you will be able to see the various plotting options on a larger set of data. Obviously, since this data is randomly generated, there is unlikely to be any signficant correlations.

For a video of my program running (if the GUIs or other parts of the program do not function correctly), see the following link:
    https://youtu.be/3xKJaIY-P0U