# SAS_Essential_1
Basics syntax, creating new columns from old columns and a few creation of new columns by multiplying old column by numbers.
*Reading the in-built sas dataset; 
data philant.class;
	set sashelp.class;
run;

proc print data=philant.class;
run;

*Creating a new variable Netsales;
data philant.shoes;
	set sashelp.shoes;
	NetSales=Sales-Returns;
run;
*This alone wont show results because the program did not create a report;
proc print data=philant.shoes;
run;

proc means data=philant.shoes min max mean std sum;
var NetSales;
class Region;
run;


* Creating a new variable 'Heightcm' that multiply the height variable by 20.5;
data myclass;	
	set sashelp.class;
	Heightcm=Height*20.54;
run;

proc print data=myclass;
run;

*Basic summary statistics for age and heightcm;
proc means data=myclass;
	var Age Heightcm;
run;

*students under 15 years and drop Height and Weight;
data under15;
	set sashelp.class;
	where Age<15;
	drop Height Weight;
run;
