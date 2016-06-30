//: Playground - noun: a place where people can play

import UIKit

//1.算全部格子總和

var sum = 0
for y in 0...7{
    for x in 0...7{
        sum+=x*y
    }
}
print (sum)


//2.算基數行的數字總和

var sum2 = 0
for y in 0...7 where y%2==1{
    for x in 0...7{
        sum2+=x*y
    }
}
print (sum2)


//3.算全部格子總和，除了列數>=行數的格子

var sum3 = 0
for y in 0...7 {
    for x in 0...7 where x<y {
        sum3+=x*y
    }
}
print (sum3)


//4.定義function，接受3個參數，起始值，最大值和決定數字倍數的number， 回傳運算結果  比方起始值3，最大值98，決定數字倍數的number為5時，(只包含5的倍數)  運算結果為 5 + 10 + 15 + ..... + 95

func caclulate4(min:Int, max:Int, multiple:Int)->Int{
    var sum = 0
    for i in min...max where i%multiple==0{
        sum += i
    }
    return sum
}

let number4 = caclulate4(min: 3, max: 98, multiple: 5)


//5.定義function，接受3個參數，起始值，最大值和決定數字倍數的number， 回傳運算結果  比方起始值3，最大值11，決定數字倍數的number為5時，(不包含5的倍數)  運算結果為 3 + 4 + 6 + 7 + 8 + 9 + 11

func caclulate5(min:Int, max:Int, multiple:Int)->Int{
    var sum = 0
    for i in min...max where i%multiple != 0{
        sum += i
    }
    return sum
}
let number5 = caclulate5(min: 3, max: 11, multiple: 5)


//6.奇數行的數字總合, 定義function，接受2個參數，分別代表行數和列數

func caclulate6 (row:Int, column:Int)->Int{
    var sum = 0
    if row%2==1{
        sum = row*column
    }
    return sum
}

var sum6 = 0
for row in 0...7 {
    for column in 0...7 {
        sum6 += caclulate6(row: row,  column: column)
    }
}
print(sum6)

//7.所有格子的總合，除了列數>=行數的格子, 定義function，接受2個參數，分別代表行數和列數
func caclulate7 (row:Int, column:Int)->Int{
    var sum = 0
    if column<row {
        sum = row*column
    }
    return sum
}
var sum7 = 0
for row in 0...7 {
    for column in 0...7 {
        sum7 += caclulate7(row: row,  column: column)
    }
}
print(sum7)

//8.定義一個function，接受一個參數代表華式溫度 ， 回到攝式溫度
func Celsius(fahrenheit:Double)->Double{
    let c = (fahrenheit-32)*(5.0/9)
    return c
}
let temperture = Celsius(fahrenheit: 100)

//9.定義 a function that takes an array of integers and sorts them into arrays for even and odd integers use tuple to return even array & odd array

func evenOdd(list:Array<Int>)->(even:Array<Int>, odd:Array<Int>){
var even:  [Int] = []
var odd: [Int] = []
let sortList = list.sorted()

    for i in sortList {
        if i%2==0 {
            even.append(i)
        }
        else{
            odd.append(i)
        }
    }
    return (even, odd)
}

let numberList = [3,2,1,4,5,6,7]
let tuple = evenOdd(list: numberList)
let evenArray = tuple.even
let oddArray = tuple.odd