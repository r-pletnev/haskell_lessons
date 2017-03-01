module Shuklan where

data MetricUnits = Meter|Liter|Kilogramm deriving (Show, Eq)

data ImperialUnits = Yard|Gallon|Pound deriving (Show)

data Measurement = MetricMeasurement Double MetricUnits
				| ImperialMeasurement Double ImperialUnits deriving (Show)


symbol :: MetricUnits -> [Char]
symbol x
	| x == Meter = "m"
	| x == Liter = "L"
	| x == Kilogramm = "kg"

convert :: Measurement -> Measurement

convert (MetricMeasurement x y)
	| y == Meter = ImperialMeasurement (1.0936 * x) Yard
	| y == Liter = ImperialMeasurement (0.2642 * x) Gallon
	| y == Kilogramm = ImperialMeasurement (2.2046 * x) Pound
