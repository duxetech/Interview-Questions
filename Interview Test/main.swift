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

func sumOfDiagnals(){
    let arr = [[1,2,3],
               [2,3,4],
               [2,3,5]]
    var sum = 0
    let s = arr.count
    for i in arr.indices {
        for j in 0...i {
            if i == j {
               sum = sum + arr[i][j]
                
            }
            
        }
    }
    print(sum)
}

sumOfDiagnals()


How you patch the app

Static vs dynamic library

Varying size of text in tv cell
app thinning

Image caching

Custom framework

MVVM using reactiveSwift

Viper



Diff b/w Notification Center and delegate
Alamofire issue, when web service running in background
Protocol vs closure
Varying size of text in tv cell

Stack view
Closure
Push notifications
Unit testing
Lazy loading
Swift 4 & 3 differences
How to  refactor code in better way.
Generics
Sylesheets
multitasking
Which callback to store value when app is killed
Coredata & sqlite difference
GCD vs Operation Queue
Syling in swift
App lifecycle
Any vs Any Object
Substring

Private pod
Obj c to swift
reader writer

Nscode
Escaping, non escaping
Ns copy
Silence notification
rich notification
Constraint layout

Xcode : Profile
How do you handle memory leak
Delegate memory leak

Dispatch Group
Multiple storyboard , how you handle conflict
Dependency injection





Code Branch : Merging
Master, Client
Conflicts, replace , merge

Module,
File structure of a project , based on MVVM
For each module,

Design for iphone, iPad


How bridging header works?



Apns

AFNetworking

Story board  -

Sqlite vs coredata

How to versioning, changes in

Call by reference
Polymorphism ; overload, override

kvc, kvo
GCD, Operation Queue,
CD Migration

Secured data storage

NSArray vs Array
Inout

Bit coding


Xib
Push, pop
Stack view, scroll view ,

Not center
Performance , memory tuning tools
Threading
Strong, weak
Gcd
Flat map
Closure


Apple certification, distribution process
Access spec
Deletion rules

Static, private, how singleton works
NSDictionary, NSArray
Lazy loading
Multiple inheritance


Issues faced :
 Core data versioning, migration ,
pod issues ,
push notification


Crashlytics, google analytics, flurry

Parsing: XML and JSON
,

Playing the role of Product Owner (PO), suggesting features, product ideas.
Creating stories in JIRA board, assigning story points, creating tasks for the stories



————————————————————————————


View controller life cycle
App delegate life cycle
App states custom delegate
Notification Center
In app purchase
Push Notification
Local notification


Coredata relationships
Coredata version migrations
Coredata Deletion rules
Caching of data, when internet is not available
Number of cells in a table view
GCD

CLLocation Delegate
How to get the current location of user?

Firebase usage?
How to analyse app crash from customer devices?
Crashlytics
Fabric
App analytics


Architecture used ?
: MVC, MVVM

Size 0f navigation bar
View attribute   <0
Multiple storyboards
iPad design
assertion
Splitview
Stackview


Generics
 Optional Chaining



If app is slow ,reasons, how you troubleshoot n fix ?

Lazy, defer
Call by reference
Completion handler
Keychain
Performance tuning

Diff app id n bundle id

Test app on phone
Testflight


performance and memory tuning with tools

Continous Integration :  Jenkins

 Migration from swift [3 to 4] , any issues

 Runtime, compile time polymorphism

Oops concepts in swift

Kinds of deployment

Structure vs class

Pro cons of singleton

Access specifiers

optional Protocol




GCD

Strong vs weak

DispatchQueue


Code coverage,
Unit tests


Tasks :
Find which is a bigger number in an array without using inbuilt functions
Pascal triangle
Add diagonals in a matrix
Binary search
Decode the series [-1,4,2,-5,3,9,6,1] such that output should be 0.25



