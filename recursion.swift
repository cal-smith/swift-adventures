import Foundation

func mult(a:Int, b:Int) -> Int {
    if (b == 0){
        return 0
    } else if (b == 1){
        return a
    } else {
        return a + mult(a, b - 1)
    }
}


func fib(n:Int) -> Int {
    if (n < 2){
        return n
    } else {
        return fib(n - 1) + fib(n - 2)
    }
}

func fastfib_helper(n:Int, a:Int, b:Int) -> Int{
    if (n == 0){
        return a
    } else {
        return fastfib_helper(n - 1, b, a+b)
    }
}

func fastfib(n:Int) -> Int {
    return fastfib_helper(n, 0, 1)
}

println("mult (6 * 7): \(mult(6, 7))")
println("fib (40): \(fib(40))")
println("fastfib (40): \(fastfib(40))")