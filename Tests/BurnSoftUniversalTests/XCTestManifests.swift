import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BurnSoftUniversalTests.allTests),
    ]
}
#endif
