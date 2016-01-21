/*Program1*/

/*Data Step*/
data europeancars;  /*Data Statement: new table "europeancars" is created*/
	set sashelp.cars;  /*source table "sashelp.cars" [libraryname.tablename]*/
	where origin="Europe"; /*Filtering*/
run;
/**/
/*Proc Step*/
proc print data=europeancars; /*Printing the table*/
run;

/*Program2*/
data highchol;
	set sashelp.heart;
	where Chol_Status="High";
run;

proc print data=highchol;
run;

/*Accessing Data in SAS Libraries*/

libname sasintro '/folders/myfolders/';
run;

libname libsas '/folders/myfolders';

data libsas.europeancars;
	set sashelp.cars;
	where origin='Europe';
run;

proc print data=libsas.europeancars;
run;

/*Creating a SAS Table from a CSV File*/
data testscores;
	infile '/folders/myfolders/datafiles/testscores.csv' dlm=',' firstobs=2;
	input Gender $ SATScore IDNumber TestDate $; /*Input Statemenet: Text fields are mentioned with $ sign*/
run;