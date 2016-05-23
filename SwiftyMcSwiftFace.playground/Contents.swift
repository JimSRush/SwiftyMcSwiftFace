import XCTest


class SolveSomeProblems {

    //Here's a fun hint: In Xcode 7, you can choose between automatic or manual execution of a playground by clicking and holding the ► arrow at the bottom left part of the playground.
    //If you finish early, feel free to either write some more tests of your own and push them to the repository for others to try.
    //Note, these tests aren't perfect, so if you find a broken one, let me know! And then you can fix it.
    
    //Compute the sum of the squares of a given list of integers
    func sumOfSquares(list: [Int]) -> Int {
        return 1
    }
    
    //Compute the sum of the squares of the even numbers of a given list of integers
    func sumOfEvenNumbersSquared(someList: [Int]) -> Int {
        return 0
    }
    
    //Given three integers, a, b & c, the function should return true if b or c is within the range of 1 from a AND the other is far away, namely different by 2 or more from A.
    func closeFar(a: Int, b: Int, c: Int) -> Bool {
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
        return -1
    }
    
    //Swap the first and last elements of an array of integers
    func swapFirstAndLast(intArray: [Int]) -> [Int] {
        return intArray
    }
    
    //Given a string, returns a boolean whether the string is a palindrome or not
    func findPalindrome(word: String) -> Bool {
        return false
    }
    
    // Given a string and an int, return a string made of the first and last n chars from the string. The string length will be at least n.
    func newWordFromFirstAndLastCharactersOfString(word: String, number: Int) -> String {
        return ""
    }
    
    // Given three integers, a, b & c, the function should return true if b or c is within the range of 1 from a AND the other is far away, namely different by 2 or more from A.
    func closeFar(intA: Int, intB: Int, intC: Int) -> Bool {
        return false
    }
    
    // Start with 2 int arrays, a and b, each length 2. Consider the sum of the values in each array. Return the array which has the largest sum. In event of a tie, return a.
    func checkArrayLength(array1: [Int], array2: [Int]) -> [Int] {
        return array1
    }
    
    //Say that a "clump" in an array is a series of 2 or more adjacent elements of the same value. Return the number of clumps in the given array.
    //    countClumps([1, 2, 2, 3, 4, 4]) → 2
    //    countClumps([1, 1, 2, 1, 1]) → 2
    //    countClumps([1, 1, 1, 1, 1]) → 1
    func countClumps(intArray: [Int]) -> Int {
    
        return 0
    }
    
    //Do what the box says
    //Should always be a positive value
    //As a reference, comparing 5th May to 5th May should return 0.
    //Time shoudl be ignored -- Time Zones should be ignored. Have fun.
    func numberOfDaysBetweenTwoDates(firstDate: NSDate, secondDate: NSDate) -> Int {
        return 2
    }
    
    //take a list of numbers and turn it into a comma seperated array: giveMeACommaSeparatedString([1,2,3,4]) -> "1,2,3,4"
    func giveMeACommaSeparatedString(intList: [Int]) -> String {
        return "Hello there"
    }
    
    //Given an array of strings, return a dictionary [String:Int] with a key for each different string, with the value the number of times that string
    //appears in the array.
    func countOccurrencesOfWords(words: [String]) -> [String:Int] {
        return ["yes hi" : 1]
    }
    
    
    /*Given an array of non-empty strings, return a dictionary of [String:String] where for every different string in the array, there is a key of its first character with the value of its last character.
    
    pairs(["code", "bug"]) → {"b": "g", "c": "e"}
    pairs(["man", "moon", "main"]) → {"m": "n"}
    pairs(["man", "moon", "good", "night"]) → {"g": "d", "n": "t", "m": "n"}*/


    func pairs(words: [String]) -> [String: String] {
    
        return ["Oh go on" : "Have a cup of tea"]
    }
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
    
    func testPairs() {
        
    }
    
    //Don't @ me if this fails, since dictionaries in swift are inherently unordered.
    func testTheOccurrencesOfWords() {
        let dictionaryToCompareAgainst = [
            "Hello" : 2,
            "Keith" : 5,
            "Mark" : 2,
            "Arnold": 1,
            "Bianca": 3,
            "Rene": 2
        ]
        
        let arrayOfNames = ["Hello", "Hello",
                            "Keith", "Keith", "Keith", "Keith", "Keith",
                            "Mark", "Mark",
                            "Arnold",
                            "Bianca", "Bianca", "Bianca",
                            "Rene", "Rene"]
        
        XCTAssertEqual(myTestClass.countOccurrencesOfWords(arrayOfNames), dictionaryToCompareAgainst)
    }
    
    func testSumOfEvenSquares() {
        XCTAssertEqual(myTestClass.sumOfEvenNumbersSquared([1,2,3,4,5,6,7,8,9,10]), 220)
        XCTAssertNotEqual(myTestClass.sumOfEvenNumbersSquared([1,2,3,4,5]), 25)
        XCTAssertNotEqual(myTestClass.sumOfEvenNumbersSquared([1,2,3,4,5]), 55)
        XCTAssertEqual(myTestClass.sumOfEvenNumbersSquared([1,2,3,4,5]), 20)
    }
    
    //Don't come at me about these deprecation warnings.
    func testTheDateThing() {
        let dateOne = NSDate(string: "2016-05-05 00:00:00 +1200")
        let dateTwo = NSDate(string: "2016-05-05 23:00:00 +1200")
        XCTAssertEqual(myTestClass.numberOfDaysBetweenTwoDates(dateOne!, secondDate: dateTwo!), 0)
   
        let anotherDateOne = NSDate(string: "2016-05-05 00:00:00 +1200")
        let anotherDatetwo = NSDate(string: "2016-05-02 00:00:00 +1200")
        XCTAssertEqual(myTestClass.numberOfDaysBetweenTwoDates(dateOne!, secondDate: dateTwo!), 3)
    }
    
    func testSomethingWithCommasAndArrays() {
        XCTAssertEqual(myTestClass.giveMeACommaSeparatedString([1,2,3,4]), "1,2,3,4")
        XCTAssertNotEqual(myTestClass.giveMeACommaSeparatedString([1,2,3,7,5,4]), "2")
    }
    
    func testClumps() {
        XCTAssertEqual(myTestClass.countClumps([1, 2, 2, 3, 4, 4]), 2)
        XCTAssert(myTestClass.countClumps([1, -1, 2, 3, -2, 3]) == 0)
        XCTAssertEqual(myTestClass.countClumps([1, 1, 1, 1, 1]), 1)
    }
    
    func testSumOfSquares() {
        let myList = [1,2,3,4,5]
        XCTAssertEqual(myTestClass.sumOfSquares(myList), 55)
    }
    
    func testCloseFar() {
        XCTAssertTrue(myTestClass.closeFar(1, b: 2, c: 3))
        XCTAssertFalse(myTestClass.closeFar(5, b: 4, c: 1))
    }
    
    func testCountALetter() {
        let myWord = "Hello"
        XCTAssertEqual(myTestClass.countALetter(myWord), 5)
    }
    
    func testSwapFirstAndLstObjectInArray() {
        let array = [1,2,3,4,5]
        let swapArray = [5,2,3,4,1]
        
        XCTAssertEqual(swapArray, myTestClass.swapFirstAndLast(array))
    }
    
    func testBlackJack() {
        XCTAssertEqual(19, myTestClass.blackJack(18, second: 19))
        XCTAssertEqual(0, myTestClass.blackJack(22, second: 23))
    }
    
    func testFindPanlindrome() {
        XCTAssertTrue(myTestClass.findPalindrome("racecar"))
        XCTAssertFalse(myTestClass.findPalindrome("jimRush"))
    }
    
    func testNewWordFromFirstAndLastCharactersOfString() {
        XCTAssertEqual("Tein", myTestClass.newWordFromFirstAndLastCharactersOfString("Teakin", number: 2))
    }
    
    func testCheckArrayLength() {
        let array1 = [1,5]
        let array2 = [7,8]
        XCTAssertEqual(array2, myTestClass.checkArrayLength(array1, array2: array2))
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


