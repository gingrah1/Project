Download updated spreadsheet manuall
Call UpdateDatabaseFull.sh.

# DrinksDBBrand.sh
Which grabs all brands from spreadsheet and adds to database.Brand


Then SELECT* Brand to tempo/Brand.csv to get BrandId,BName.

Cut Brand,Flavor from spreadsheet

Compare Brand to BName and returns resulting BrandId
Add BrandId,FName to db.Flavor

Grab Names (first,last, "Test" user/pass right now) from spreadsheet and adds to database.Person

SELECT* Flavor to tempo/Flavor.csv to get FlavorId, FName
SELECT* Person to tempo/Person.csv to get UserId, FirstName, LastName
Cut Brand,Flavor,Rating from spreadsheet for each person and add to database.Review (UserId, FlavorId, Rating, Text "")

rm tempo/*.csv

