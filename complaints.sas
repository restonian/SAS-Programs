


/** FOR CSV Files uploaded from Windows **/

FILENAME CSV "/folders/myfolders/HMDA/HMDA_lar.CSV" TERMSTR=CRLF;


/** Import the CSV file.  **/

PROC IMPORT DATAFILE=CSV
		    OUT=WORK.MYCSV
		    DBMS=CSV
		    REPLACE;
RUN;

/** Print the results. **/

*PROC PRINT DATA=WORK.MYCSV; RUN;

/** Unassign the file reference.  **/

FILENAME CSV;
