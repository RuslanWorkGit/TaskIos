let first = 1
let second = 2
let third = 3
let fourth = 5
let fifth = 8
let sixth = 13

var sum = first + second + third + fourth + fifth + sixth
var mult = first * second * third * fourth * fifth * sixth

sum -= 10
mult /= sum
print("The different betwen \(mult) and \(sum) is \(mult - sum)")


let a = 3
let b = 12
let c = 54
let d = 8

if a > b {
    print("1")
    if (a + b) < c {
        print("4")
    } else {
        print("5")
    }
} else if a < b {
    print("2")
    if a < c || b < c {
        print("6")
    } else if (a > d && c > d) && d > b {
        print("7")
    }
} else {
    print("3")
    if a < 0 {
        print("8")
    }
}

