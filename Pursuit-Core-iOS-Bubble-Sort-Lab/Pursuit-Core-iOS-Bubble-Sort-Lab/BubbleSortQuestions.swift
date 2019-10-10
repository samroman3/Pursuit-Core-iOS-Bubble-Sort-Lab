import Foundation

// Question One

// Implement bubble sort that accepts a closure about how to sort elements

func bubbleSort<T: Comparable>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    var arr = arr
    var madeSwap = false
    repeat {
        madeSwap = false
        for i in 0..<arr.count - 1 {
            if !isSorted(arr[i], arr[i + 1]) && arr[i] != arr[i+1] {
                arr.swapAt(i, i + 1)
                madeSwap = true
            }
        }
    } while madeSwap
    return arr
}

// Question Two

// Sort an array of Ints without changing the position of any negative numbers
// https://www.geeksforgeeks.org/sort-an-array-without-changing-position-of-negative-numbers/

func bubbleSortWithoutMovingNegatives<T: Comparable>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
   let arr = arr
   if arr.isEmpty {
       return [T]()
   }
   var madeSwap = false
   let zero = 0 as! T
   var positiveArr = arr.filter { $0 >= zero }
   var answer = [T]()
   var positiveIndex = 0
   repeat {
       madeSwap = false
       for i in 0..<positiveArr.count - 1 {
           if !isSorted(positiveArr[i], positiveArr[i+1]) && positiveArr[i] != positiveArr[i+1] {
               positiveArr.swapAt(i, i+1)
               madeSwap = true
           }
       }
   } while madeSwap
   for i in arr {
       if i < zero {
           answer.append(i)
       } else {
           answer.append(positiveArr[positiveIndex])
           positiveIndex += 1
       }
   }
   return answer
}

// Question Three

// Implement Cocktail sort
// https://www.geeksforgeeks.org/cocktail-sort/

func cocktailSort<T: Comparable>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    return arr
}

// Question Four

// Implement bubble sort on a linked list

func bubbleSort<T: Comparable>(list: LinkedList<T>, by isSorted: (T, T) -> Bool) -> LinkedList<T> {
    return list
}
