import UIKit

func isPalindrome(s : inout String){
    var arr = s.split(separator: " ")
    var s1:String = ""
   
    for i in 0..<arr.count {
        s1 += arr[i]
        if String(s1.reversed())==s1{
        print(s1)
        }
            }
    if(arr.count>1) {
        let endRemoveIndex = s.index(s.startIndex, offsetBy: arr[0].count)
        s.removeSubrange(s.startIndex...endRemoveIndex)
        isPalindrome(s: &s)
    }
}
var s = "tar rat mam mam tar rat"
isPalindrome(s: &s)
