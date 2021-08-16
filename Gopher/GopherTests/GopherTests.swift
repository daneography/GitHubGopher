//
//  GopherTests.swift
//  GopherTests
//
//  Created by Dane Acena on 8/12/21.
//

import XCTest
@testable import Gopher

class GopherTests: XCTestCase {
    
    var sut: URLSession!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = URLSession(configuration: .default)
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testValidApiCallGetsHTTPStatusCode200() throws {
        //given
        let urlString = "https://api.github.com/repos/apple/swift/commits?per_page=25"
        let url = URL(string: urlString)!
        // 1
        let promise = expectation(description: "Status code: 200")
        
        //when
        let dataTask = sut.dataTask(with: url){ _, response, error in
            // then
            if let error = error {
                XCTFail("Error: \(error.localizedDescription)")
                return
            } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                if statusCode == 200 {
                // 2
                promise.fulfill()
                
            } else{
                        XCTFail("Status code: \(statusCode)")
                    }
                }
            }
            dataTask.resume()
            // 3
            wait(for: [promise], timeout: 5)
        }
}
