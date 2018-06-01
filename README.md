# Xcode Bug In Test Coverage for Swift init() methods

Sample Xcode project demonstrating a Bug In Test Coverage For Swift Init methods

While testing a convenience init() in a Swift class it will call a designated init()
Xcode until 9.3 used to report the coverage correctly showing designated init has been covered in test.

Currently Xcode 9.3 and 9.4 test coverage report incorrectly shows designated init has not been called.

## Steps to reproduce:
  1. Open BugCoverageSwiftInit.xcodeproject
  2. Run Unit Tests
  3. See Sample.swift line 13 is incorrectly reported as not covered, at the same time you can see the output from the call to the init() in test run output:
  
```
Test Suite 'All tests' started at 2018-06-01 14:05:13.773
Test Suite 'BugCoverageSwiftInitTests.xctest' started at 2018-06-01 14:05:13.773
Test Suite 'BugCoverageSwiftInitTests' started at 2018-06-01 14:05:13.774
Test Case '-[BugCoverageSwiftInitTests.BugCoverageSwiftInitTests testExample]' started.
This line is reported as not covered with tests in Xcode, but it is, as you can see this message in test run output
Test Case '-[BugCoverageSwiftInitTests.BugCoverageSwiftInitTests testExample]' passed (0.003 seconds).
Test Suite 'BugCoverageSwiftInitTests' passed at 2018-06-01 14:05:13.778.
Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.004) seconds
Test Suite 'BugCoverageSwiftInitTests.xctest' passed at 2018-06-01 14:05:13.778.
Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.005) seconds
Test Suite 'All tests' passed at 2018-06-01 14:05:13.779.
Executed 1 test, with 0 failures (0 unexpected) in 0.003 (0.006) seconds
Program ended with exit code: 0
```

See screenshots attached:

![Coverage Report Summary](https://github.com/paulz/XcodeBugInTestCoverageForSwiftInit/blob/master/BugCoverageSwiftInitTests/coverage-summary.png)

![Line Coverage in Source](https://github.com/paulz/XcodeBugInTestCoverageForSwiftInit/blob/master/BugCoverageSwiftInitTests/coverage-source-lines-in-red.png)

