me following along to

The How and Why of Property-Based Testing in Ruby
https://www.sitepoint.com/the-how-and-why-of-property-based-testing-in-ruby/

The strategy:
To test a function
- Write properties (using RSpec and Rantly) for the function
  - a property for a function must be satisfied by every input/output pair that goes into the function
    - think for example of reversing a string
    - the reverse function must satisfy the following rule
    - reverse(reverse(str)) == str
    - and it must satifsfy this rule for every valid input string str
    - That is a property
  - speaking of valid input strings, there are ways to tell Rantly what constitutes valid input too
    - for example, you can tell Rantly that all valid inputs must be integer arrays whose elements are positive
- Rantly generates 100s of test cases for your function, reporting when it finds counterexamples
  - a counterexample is a input/output pair that does not satisfy at least one property
- Rantly tries to shrink the counterexample to make it easier for you to debug

keywords:
RSpec, Rantly, QuickCheck, automated testing,
automated test case generation,