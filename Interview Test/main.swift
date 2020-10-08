//
//  main.swift
//  Interview Test
//
//  Created by Karthik on 10/7/20.
//

import Foundation

//reverse string
func palindrome(s : String) {
    
    let st = s.map{$0}
    var pal = ""
    let size = s.count-1
    for i in 0...size {
        pal.append(st[size-i])
    }
    print(pal)
}



//Rearrange a given array so that Arr[i] becomes Arr[Arr[i]] with O(1) extra space.

func rearrange() {
    let s = "sfd"
    var arr = [Int]()
    
    for i in 0..<s.count {
        arr.append(i)
    }
    print(arr)
    
}


func paskalTriangle(n:Int) {
    var arr = [[Int]]()
    var row =  [Int]()
    
    for i in 0..<n {
        for j in 0...i {
            
            if j == 0 || j == i {
                row.append(1)
            } else {
                let sum = arr[i-1][j-1]+arr[i-1][j]
                row.append(sum)
            }
        }
        
        arr.append (row)
        row = []
    }
    print(arr)
}


func checkPrimeNo(n:Int)->Bool {
    
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}


func primeNo(n : Int) {
    var prime : [Int] = []
    
    for i in 2...n {
        if checkPrimeNo(n: i) {
            prime.append(i)
        }
    }
    print(prime)
    
}


func BubbleSort(items : [Int]) {
    // items = [3,42,3,5,7,2,6,4,1,23,12]
    
    var items = items
    var ar = [Int]()
    
    for _ in items.indices {
        var flag = false
        for i in 0..<items.count {
            
            if i+1 < items.count {
                if items[i] > items[i+1] {
                    (items[i],items[i+1]) = (items[i+1],items[i])
                    flag = true
                }
            }
        }
        print(items)
        if !flag {
            return
        }
    }
    
}

func BinarySearch() {
    var items = [1, 2, 3, 3, 4, 5, 6, 7, 12, 23, 42]
    
    let m = items.count/2
    print(items[m])
    let x = 7
    
    
    var left = 0
    var right = items.count-1

    
    while left <= right {
        
        if items[m] > x {
            left = m + 1
            print("left",left)
        } else if items[m] > x {
            right = m + 1
            print("right",right)
      } else {
            print("middle")
        }
    }
    
    
}



func binarySearch(in numbers: [Int], for value: Int) -> Int?
{
    var left = 0
    var right = numbers.count - 1

    while left <= right {

        let middle = Int((Double(left + right) / 2.0))

        print("Looking for \(value) in \(numbers[left...right])")
        print("Middle index is \(middle), value is \(numbers[middle])")

        if numbers[middle] < value {
            print("\(numbers[middle]) is smaller than \(value), choosing right half of array")
            left = middle + 1
        } else if numbers[middle] > value {
            print("\(numbers[middle]) is bigger than \(value), choosing left half of array")
            right = middle - 1
        } else {
            return middle
        }
    }

    return nil
}


binarySearch(in: [1, 2, 3, 4], for: 4)
