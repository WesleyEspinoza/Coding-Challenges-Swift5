import UIKit

/*
 Given an array a of n numbers and a target value t, find two numbers whose sum is t.
 Example: a=[5, 3, 6, 8, 2, 4, 7], t=10  ⇒  [3, 7] or [6, 4] or [8, 2]
 Clarifying Qs:
 - Can the target be 0? If so, does that require finding two zeros?
 - Can the list be empty and have a valued target?
 - Should I return a list or a tuple?
 - Am I able to return an empty list/tuple if no two numbers are found?
 */

func twoSum(_ numbers: [Int], _ target: Int) -> [Int]{
    var finalResult: [Int] = [0,0]
    
    for i in 0...numbers.count - 1 {
        let numberToCheck: Int = target - numbers[i]
        for j in 0...numbers.count - 1{
            
            if numbers[j] == numberToCheck && j != i {
                finalResult = [numbers[i], numberToCheck]
                break
            }
            if finalResult != [0,0] {
                break
            }
        }
    }
    
    return finalResult
}

print(twoSum([5, 3, 6, 8, 2, 4, 7], 10))
