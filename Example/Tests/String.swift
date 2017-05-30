// https://github.com/Quick/Quick

import Quick
import Nimble
import SwiftRubySyntax

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        
        var alphaString: String!
        var alphanumericString: String!
        
        beforeEach {
            alphaString = "abcABC"
            alphanumericString = "12abc456"
        }
        
        describe("isAlpha") {
            
            it("returns true if alpha Characters only") {
                expect(alphaString.isAlpha).toEventually(beTruthy())
            }
            
            it("returns false if numeric characters contained") {
                expect(alphanumericString.isAlpha).toEventually(beFalsy())
            }
            
        }
        
        
        
    }
}
