import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BurnSoft_UniversalTests.allTests),
    ]
}
#endif
