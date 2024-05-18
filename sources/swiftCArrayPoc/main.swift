import Foundation
import cArrPocLibrary

print("Swift C Array Compiler Issue PoC!")

// Issue #1

for i in 0..<10 {
    // Issue #1: bug when compiling
    print("Result: \(i) = \(cArrPocLibrary.CPocLibraryValues[i])")

    // Workaround for Issue #1
    print("Result: \(i) = \(cArrPocLibrary.CPocLibraryPointer[i])")
}

// Issue #2

print("Size of struct data member: \(cArrPocLibrary.valueFamStruct.size )")
for i in 0..<cArrPocLibrary.valueFamStruct.size {
    // Issue #2: error: value of type 'famStruct' has no member 'data'
    print("Result: \(i) = \(cArrPocLibrary.valueFamStruct.data[i])")

    // Workaround for Issue #2
    print("Result: \(i) = \(cArrPocLibrary.getDataPtr(&cArrPocLibrary.valueFamStruct)[Int(i)])")
}