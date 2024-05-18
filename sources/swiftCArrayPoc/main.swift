import Foundation
import cArrPocLibrary

print("Swift C Array Compiler Issue PoC!")

for i in 0..<10 {
    // Comment the following line to solve the issue
    print("Result: \(i) = \(cArrPocLibrary.CPocLibraryValues[i])")

    print("Result: \(i) = \(cArrPocLibrary.CPocLibraryPointer[i])")
}