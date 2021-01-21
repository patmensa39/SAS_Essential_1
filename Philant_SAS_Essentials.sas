

proc print data=sashelp.cars;
   by make;
   var make model type origin Type Weight Wheelbase  EngineSize  Horsepower;  
run;  



data patrick;
 set sashelp.cars;
 where Make='Acura';
run;

proc print data=patrick;
run;


proc sgplot data=WORK.PATRICK;
	vbar DriveTrain / response=MSRP fillattrs=(color=CX887228);
	yaxis grid;
run;

ods graphics / reset;



data philant_class;
 set sashelp.class;
 Doubleage=5*Age;
run;

proc print data=philant_class;
run;


 


