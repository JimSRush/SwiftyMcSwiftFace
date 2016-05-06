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
        return -1
    }
    
    func swapFirstAndLast(intArray: [Int]) -> [Int] {
        return intArray
    }
    
    // Palindrome
    
    func findPalindrome(word: String) -> Bool {
        return false
    }
    
    // Given a string and an int n, return a string made of the first and last n chars from the string. The string length will be at least n.
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
    
    // Anagram
    func checkForAnagram(words: [String], word: String) -> [String] {
        // parse array of words into dictionary
        print(words.count)
        var mySortedKeyValues = Dictionary<String, [String]>()
//        for word in words {
//            let key = String(word.characters.sort{ $0<$1 })
//            let keyExists = mySortedKeyValues[key] != nil
//            if keyExists {
//                var values = mySortedKeyValues[key]
//                values?.append(word)
//                mySortedKeyValues.updateValue(values!, forKey: key)
//            } else {
//                mySortedKeyValues[key] = [word]
//            }
//            
//            //mySortedKeyValues.updateValue(mySortedKeyValues[key]?.append(word), forKey: key)
//        }
        // sort word alphabetically to get key
        // check key against dictioary
        // return array of words that match the key
        return mySortedKeyValues[String(word.characters.sort{ $0<$1 })]!
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
    
//    func testCheckForAnagram() {
//        let lowercaseStrings = try! String(contentsOfFile: "/usr/share/dict/words").componentsSeparatedByString("\n").map({ $0.lowercaseString
//        })
//        
//        let expectedResult = ["later", "alter", "alert"]
//        print(myTestClass.checkForAnagram(lowercaseStrings, word: "alert"))
//        XCTAssertEqual(expectedResult, myTestClass.checkForAnagram(lowercaseStrings, word: "later"))
//    }
    
    func testThatAnagramThingyIsWorking() {
        let lowercaseStrings: [String] = try! String(contentsOfFile: "/usr/share/dict/words").componentsSeparatedByString("\n").map({ $0.lowercaseString
        })
        print(myTestClass.checkForAnagram(lowercaseStrings, word: "alert"))
        print("Hey")
        //call method
        //print anagrams for word
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


