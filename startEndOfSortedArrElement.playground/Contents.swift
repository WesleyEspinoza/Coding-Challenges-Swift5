import UIKit

/*

// 2. Given a sorted array of strings, write a recursive function
to find the index of the first and last occurrence of a target string.
If the target string is not found in the array, report that.
// Example input:  instructors = [Adriana, Adriana, Alan, Alan,
Alan, Alan, Alan, Braus, Braus, Braus, Braus, Dan, Dan, Dan, Dan,
Dan, Dani, Dani, Jess, Meredith, Milad, Milad, Mitchell, Mitchell,
 Mitchell, Mitchell]
// Example execution:  find_indexes(instructors, ‘Braus’)  ⇒
(7, 10)

*/

func startAndEndIndexOfTarget(list: [String], target: String, _ pointerOne: Int = 0, _ pointerTwo: Int = 0){
    if pointerOne >= list.count {
        return
    }
    
    if list[pointerOne] == target {
        
    }
}


