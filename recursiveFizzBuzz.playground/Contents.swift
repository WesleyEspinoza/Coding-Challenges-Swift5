import UIKit

var str = "Hello, playground"

/*
You’re asked to write recursive FizzBuzz.
Your function takes 2 integers: start and end,
which are the first and last number in the sequence of integers
to return in a list (array). However,
if the number is a multiple of 3, put “Fizz” in the list
instead of the number.

start at start number

if the number is greater than end, then return array

check if its a multiple of 3 by using % 3 and if there is no
remainder add "Fizz" to list



check if its a multiple of 5 by using % 5 and if there is no
remainder add "Buzz" to list


check if its a multiple of 3 and 5 by using % 5 and if there is no
remainder add "FizzBuzz" to list

call our function again plus one


*/

func fizzBuzz(_ start: Int, _ end: Int, _ finalResult: [String] = []){
  var newArr = finalResult
  if start > end {
    print("\(finalResult)")
    return
  }
  if start % 5 == 0 && start % 3 == 0{
    newArr.append("FizzBuzz")
  } else if start % 3 == 0{
    newArr.append("Fizz")
  } else if start % 5 == 0{
    newArr.append("Buzz")
  } else {
    newArr.append("\(start)")
  }
  fizzBuzz(start + 1, end, newArr)
}
