import Distribution.Simple.PackageIndex (SearchResult(None))
-- Write printAMessage here

printAMessage :: Show a => a -> IO ()
printAMessage = print

-- Write division here

division :: Double -> Double -> Maybe Double
division x y | y==0 = Nothing
             | otherwise = Just(x / y)

-- Write factorial here

factorial :: Int -> Int
factorial 1 = 1
factorial num = num * factorial (num-1)

-- Write factList here

factList :: Int -> [Int]
factList num = map factorial [1..num]

-- Write merge here

merge :: [Int] -> [Int] -> [Int]
merge [] list = list
merge list [] = list
merge (a:aList) (b:bList) | a < b = a : merge aList (b:bList)
                          | otherwise = b : merge (a:aList) bList


main = print(merge [1,3,5] [2,4,6]) -- Replace this with your testing code