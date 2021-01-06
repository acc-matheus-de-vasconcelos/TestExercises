import XCTest

enum FailureError: Error, CustomStringConvertible {

    case optional(Any)

    internal var description: String {
        switch self {
        case .optional(let object):
            return "expected non-nil value of type \"\(object.self)\""
        }
    }

}

extension XCTestCase {

    public func XCTUnwrap<T>(_ expression: T?, file: StaticString = #filePath, line: UInt = #line) throws -> T {
        if let value = expression {
            return value
        }
        throw FailureError.optional(T.self)
    }

}

