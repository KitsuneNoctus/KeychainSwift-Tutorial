//
//  KeychainPractice_KeychainSwiftTests.swift
//  KeychainPractice-KeychainSwiftTests
//
//  Created by Henry Calderon on 6/10/20.
//  Copyright © 2020 Henry Calderon. All rights reserved.
//

import XCTest
import KeychainSwift

@testable import KeychainPractice_KeychainSwift

class KeychainPractice_KeychainSwiftTests: XCTestCase {
    
    var vc: ViewController!
    var vc2: DetailViewController!
    let keychains = KeychainSwift()
    
    //MARK: Setup
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        vc = ViewController()
        vc2 = DetailViewController()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    //MARK: My tests
    
    func testMessageSave(){
        vc.save(mess: "Testing", key: "Test")
        XCTAssertEqual("Testing", vc.keychain.get("Test"))
        
    }
    
    func testMessageGet(){
//        XCTAssert()
    }
    
    func testDeleteMessage(){
        
    }

}
