import Foundation

// Question One

// Implement bubble sort that accepts a closure about how to sort elements

func bubbleSort<T: Comparable>(arr: [T], by isSorted: (T, T) -> Bool) -> [T] {
    var arr = arr
    var madeSwap = false
    repeat{
        madeSwap = false
        for i in 0..<arr.count - 1 {
            if !isSorted(arr[i], arr[i + 1]) && arr[i] != arr[i+1]{
                arr.swapAt(i, i+1)
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
    var arr = arr
    var ans = [T]()
    var nums = [T]()
    var ansIndex = 0
    let zero = 0 as! T
    
    for (i,j) in arr.enumerated(){
        if (j)  >= zero{
            ans.append(j)
            ans = ans.sorted()
        }
//        else if (j as! Int) < 0{
//            ans.insert(j as! Int, at: i)
//            print(i)
//        }
    }
    print(ans)
//    for (i,j) in arr.enumerated() {
//        var count = 0
//        if j as! Int  >= 0 {
//            nums.append(ans)
//
//        }
//        else {
//            nums.insert(j as! Int, at: i )
//        }
//    }
   
    
    for i in arr {
        if i  >= zero {
            nums.append(ans[ansIndex])
            ansIndex += 1
        }else{
            nums.append(i)
        }
    
    }
    
    return nums
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
