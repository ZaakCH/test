--f = \a->(\b-> (a++b))

f' a b = a++b

--f a= head a

--g :: Num a=>(a,a)-> a
g = \(i,j)-> [0..i]

succ' = \x -> x + 1

-- x::a f::(a->a)

thrice' f = \x -> f (f (f x))