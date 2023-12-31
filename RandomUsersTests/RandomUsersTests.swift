//
//  RandomUsersTests.swift
//  RandomUsersTests
//
//  Created by Danila Vornovitskii on 30.10.2023.
//

import XCTest
@testable import RandomUsers

final class RandomUsersTests: XCTestCase {

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
    private func getTestJSONData() -> Data {
        let url = URL(string: "https://static-assets.codecademy.com/Paths/ios-career-path/skill-path-3/Track1/RandomUsers/testRandomUsers.json")!
        return try! Data(contentsOf: url)
    }
    
    func testUserModel() {
        let jsonData = getTestJSONData()
        
        do {
            _ = try JSONDecoder().decode(Response.self, from: jsonData)
        } catch {
            XCTFail("Failed to decode JSON into the model: \(error)")
        }
    }

}
