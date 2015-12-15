--f = \a->(\b-> (a++b))

f' a b = a++b

--f a= head a

--g :: Num a=>(a,a)-> a
g = \(i,j)-> [0..i]

succ' = \x -> x + 1

-- x::a f::(a->a)

thrice' f = \x -> f (f (f x))

class MyNum a where
	zero :: a
newtype MyInt = MyInt Int deriving Show
instance MyNum MyInt where
	zero = MyInt 0
newtype MyReal = MyReal Float deriving Show
instance MyNum MyReal where
	zero = MyReal 0
if1 = if True then show ( zero :: MyInt ) else show ( zero :: MyReal )
sum x y = MyReal (x + y)
mult ( MyReal x) ( MyReal y) = MyReal (x*y)
power x ( MyInt 0) = MyReal 1
power x ( MyInt n) = mult ( power x ( MyInt (n -1))) x
