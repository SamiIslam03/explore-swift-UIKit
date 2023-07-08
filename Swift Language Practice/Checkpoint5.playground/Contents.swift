import Cocoa

var greeting = "Hello, playground"

var luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
print(luckyNumbers)

func checkPoint5(first: () -> Void, second: () -> Void, third: () -> Void){
    first()
    second()
    third()
}

checkPoint5 {
    let findEven = luckyNumbers.filter{$0 % 2 != 0}
    luckyNumbers = findEven;
} second: {
    luckyNumbers.sort()
} third: {
    let mapTheLuckyNumber = luckyNumbers.map{"\($0) is a luck number."}
    for num in mapTheLuckyNumber {
        print(num)
    }
}


//var texts = luckyNumbers.filter{ !$0.isMultiple(of: 2) }.sorted{ $0 < $1 }.map{ "\($0) is a lucky number" }
//
//for text in texts {
//    print(text)
//}
