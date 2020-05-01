import UIKit
/*
Problem 2
Given an array a of n numbers and a count k find the k largest values in the array a.
Example: a=[5, 1, 3, 6, 8, 2, 4, 7], k=3 ⇒ [6, 8, 7]
*/


func findLargestElements(_ elements: [Int], _ k: Int) -> [Int]{
    // simple solution
    return elements.sorted().suffix(k)
    
}

print(findLargestElements([5, 1, 3, 6, 8, 2, 4, 7], 3))
