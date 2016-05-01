import XCTest


class SolveSomeProblems {

    //Compute the sum of the squares of a given list of integers
    func sumOfSquares(list: [Int]) -> Int {
        let myList = list.map{$0*$0}.reduce(0, combine:+)
        return myList
        //return 1
    }
    
    //Given three integers, a, b & c, the function should return true if b or c is within the range of 1 from a AND the other is far away, namely different by 2 or more from A.
    func closeFar(a: Int, b: Int, c: Int) -> Bool {
        //if b-a (abs) or c-a(abs) == 1 or == 0
        //if
        return true
    }

    //Given two integers greater than 0, return whichever one is closest to 21 *without* going over. Return 0 if they both go over
    func blackJack(first: Int, second: Int) -> Int {
        return 0
    }

    //Return the number of UTF8, UTF16, UTF32 & Unicode Scalars & visual characters in a given string.
    func findMeSomeUTF(word: String) -> Int {

    return 1
    }

    //Count the number of times a given letter occurs in a string.
    func countALetter(word: String) -> Int {

        return word.characters.count
    }
    
    //    Start with 2 int arrays, a and b, each length 2. Consider the sum of the values in each array. Return the array which has the largest sum. In event of a tie, return a.
}

class MyTests: XCTestCase {

    let myTestClass = SolveSomeProblems()

    override func setUp() {
        super.setUp()
    }

    func testFailingTests() {
        XCTFail("Faillll")
    }
    
    func testPassingTests() {
        XCTAssertEqual(1+1, 2)
    }
    
    func testSumOfSquares() {
        let myList = [1,2,3,4,5]
        XCTAssertEqual(myTestClass.sumOfSquares(myList), 55)
    }
    
    func testCloseFar() {
        
    }
    
    func testCountALetter() {
        let myWord = "Hello"
        XCTAssertEqual(myTestClass.countALetter(myWord), 5)
    }
    
}
/*Boilerplate code to make all this stuff work in playground. If a test runs in a forest etc etc*/
class PlaygroundTestObserver : NSObject, XCTestObservation {
    @objc func testCase(testCase: XCTestCase, didFailWithDescription description: String, inFile filePath: String?, atLine lineNumber: UInt) {
        print("Test failed on line \(lineNumber): \(testCase.name), \(description)")
    }
}

let observer = PlaygroundTestObserver()
let center = XCTestObservationCenter.sharedTestObservationCenter()
center.addTestObserver(observer)

struct TestRunner {
    
    func runTests(testClass:AnyClass) {
        print("Running test suite \(testClass)")
        let tests = testClass as! XCTestCase.Type
        let testSuite = tests.defaultTestSuite()
        testSuite.runTest()
        let run = testSuite.testRun as! XCTestSuiteRun
        
        print("Ran \(run.executionCount) tests in \(run.testDuration)s with \(run.totalFailureCount) failures")
    }
    
}

TestRunner().runTests(MyTests)


