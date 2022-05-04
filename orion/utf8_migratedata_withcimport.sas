%let path=C:\workshop\UTF8Encoding\orion;
options dlcreatedir nofmterr; 
libname ordet "&path\utf8_ordetail"; 
libname orfmt "&path\utf8_orfmt"; 

proc cimport library=ordet file="&path\_ctrl\ordet.xpt" extendvar=1.5 extendformat=yes; 
run; 
proc cimport library=orfmt file="&path\_ctrl\orfmt.xpt" extendvar=1.5; 
run; 

proc print data=ordet.customer(obs=20); 
run;
proc contents data=ordet.customer; 
run;
