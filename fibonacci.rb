def fibs(n)
    return [0] if n == 1
    return "invalid number" if n <= 0
    fibonacci_numbers = [0, 1]
    i = 1
    while i < n - 1
        fibonacci_numbers.push(fibonacci_numbers[i-1] + fibonacci_numbers[i])
        i += 1
    end

    return fibonacci_numbers
end 

def fib(n)
  if n < 2
    n
  else
    fib(n - 1) + fib(n - 2)
  end
end

def fibs_rec(n, fibonacci_numbers) 
    i = 0
    while i <= n
        fibonacci_numbers.unshift(fib(n))
        n -= 1
    end
    fibonacci_numbers
end

p fibs_rec(6, [])