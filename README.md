
# Vail Coding Challenge
Here is my coding sample for the challenge.
I've included some directions for running the unit tests in case that's needed

### The Problem Statement
The problem we would like you to solve deals with an array of integers. We want to rotate these integers
to a specified number of positions to the left.
If for example you have an array of integers [1,2,3,4,5,6,7] and we would like to rotate 2 positions to the
left, the solution expected would be [3,4,5,6,7,1,2].
Note, the solution should be able to handle a position value greater than the number of integers in the
array. If, for example, we would like to rotate [1,2,3,4,5,6,7] 8 positions to left, it would produce the
result [2,3,4,5,6,7,1]. Negative values for the positions to rotate will throw an error which the code
example should handle gracefully.

## Unit Tests
### Unit tests require rspec to be installed:
- `gem install rspec` (might need admin permissions on your system)

### Running unit tests
- from the project root directory run, `rspec`. Tests will be located in the `/spec` folder and run.

### Clarifications
As the problem statement only mentioned intergers, 
a question to product could be, "should this function ONLY work with intergers?" Should this deny the ability to rotate arrays of non-interger data?
This could be a check added to the function if desired by the product team.
Currently any array will work. 