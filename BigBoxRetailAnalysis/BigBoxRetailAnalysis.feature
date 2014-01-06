Feature: BigBoxRetailAnalysis
This Analytic App analyzes the networks of three fictitious big box retailers (Box Max, Super Center and Giant Depot).

Background:
  Given alteryx running at" http://gallery.alteryx.com/"
  And I am logged in using "deepak.manoharan@accionlabs.com" and "P@ssw0rd"
  #And I publish the application "twitter tracker"
  #And I check if the application is "Valid"


Scenario Outline:run BigBox Retail App and check for output
When I run the App "<app>" with <Competitive Trade Area Size (Miles)> and <Maximum Travel Distance Trade Area Size (Miles)>
Then I see the text in the output "<text>"

Examples: 
| app                     | Competitive Trade Area Size (Miles) | Maximum Travel Distance Trade Area Size (Miles) | text                                              |
| Big Box Retail Analysis | 5                                   | 25                                              | Big Box Comparison Report                         |
