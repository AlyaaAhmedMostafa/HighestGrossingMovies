Select *
From [dbo].[Highest Holywood Grossing Movie]

Alter Table [dbo].[Highest Holywood Grossing Movie]
Add ReleaseDateConverted Date;

Update [dbo].[Highest Holywood Grossing Movie]
SET ReleaseDateConverted = Convert (Date,ReleaseDate)

--Highest grossing Movies
Select  Title,WorldWideSales
From [dbo].[Highest Holywood Grossing Movie]
order by WorldWideSales Desc

--Budget Vs Gross
Select Title,Budget,WorldWideSales
From [dbo].[Highest Holywood Grossing Movie]
Where budget is not Null
Order by WorldWideSales Desc

--License Vs Gross
Select Title,WorldWideSales,License
From [dbo].[Highest Holywood Grossing Movie]
Order by WorldWideSales Desc

--Domestic Opening Vs Gross 
Select Title,DomesticOpening,WorldWideSales
From [dbo].[Highest Holywood Grossing Movie]
Order by WorldWideSales Desc

--Top Distributors
Select Distinct (Distributor) ,Count(Distributor)As DistributorCount
From [dbo].[Highest Holywood Grossing Movie]
Where Distributor is not Null
Group by Distributor
Order by DistributorCount DESC

--Highest Budgets
Select Title,MAX(Budget) As MaxBudget
From [dbo].[Highest Holywood Grossing Movie]
Where Budget is not Null
Group by Title 
Order By MaxBudget Desc

--Lowest Budgets
Select Title,MIN(Budget) As MINbudget
From [dbo].[Highest Holywood Grossing Movie]
Where Budget is not Null
Group by Title 
Order By MINbudget 

--The Most Popular Movie Genres
Select Distinct (Genre),Count(Genre)As MaxGenre
From [dbo].[Highest Holywood Grossing Movie]
Group by Genre
Order by MaxGenre DESC

--Years with the highest movies releases
Select Distinct (Year) ,Count(Year)As MaxYear
From [dbo].[Highest Holywood Grossing Movie]
Group by Year
Order by MaxYear DESC

