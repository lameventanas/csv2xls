
#######
csv2xls
#######


****
NAME
****


csv2xls - Convert CSV files to Excel


********
SYNOPSIS
********


csv2xls [global_options] {[input_options] --csv=input_csv} ... {[xls_options] [--xls=output_xls]}


**************
GLOBAL OPTIONS
**************



- \ **--verbose**\ 



- \ **--verbose**\ =x
 
 Change verbosity level (up to 2)
 



*****
FILES
*****


Input and output files can appear by themselves in the command line.  Files with extensions matching Excel standard ones will be taken as output files, otherwise as input files.  If no output files are specified, an output filename will be made based on the first input file.


*************
INPUT OPTIONS
*************



- \ **--separator=<char>**\ 
 
 Column separator. If not specified, will be guessed.
 


- \ **--encoding=<encoding>**\ 
 
 Set file encoding. If not specified will use utf-8.
 


- \ **--name=<name>**\ 
 
 Set default name on destination sheets of output.  If not specified, will be derived from filename.
 



**************
OUTPUT OPTIONS
**************



**********
PROPERTIES
**********



- \ **--title=<text>**\ 



- \ **--subject=<text>**\ 



- \ **--author=<text>**\ 



- \ **--manager=<text>**\ 



- \ **--company=<text>**\ 



- \ **--category=<text>**\ 



- \ **--keywords=<text>**\ 



- \ **--comments=<text>**\ 



- \ **--status=<text>**\ 



- \ **--hyperlink_base=<text>**\ 




********************
OUTPUT SHEET OPTIONS
********************


Formatting options must specify a sheet number, and may specify a range.
If no range is provided, they will be applied to the whole sheet.


- \ **--sheet<nr>=FORMATS**\ 



- \ **--sheet<nr>[-<range>]=FORMATS**\ 



- \ **--sheet<nr>-split-panes[=<Y,X[,top_row,left_col]>]**\ 



- \ **--sheet<nr>-freeze-panes[=<row,col[,top_row,left_col]>]**\ 



- \ **--sheet<nr>-grid-lines={all|screen|none}**\ 
 
 Where <nr> is a sheet number, starting with 1.
 



*******
FORMATS
*******


Formats are space-separated. Quotes may be used to protect spaces in format parameters.


- \ **align={center|left|right|fill|justify|center_across|top|vcentter|bottom|vjustify}**\ 
 
 It can be specified more than once, for horizontal / vertical alignment.
 


- \ **autofilter**\ 



- \ **autofit**\ 



- \ **bold**\ 



- \ **border=NUM**\ 
 
 NUM is a number from 0 to 13, see the `Excel border styles <http://search.cpan.org/search?query=https%3a%2f%2fmetacpan%2eorg%2fpod%2fExcel%3a%3aWriter%3a%3aXLSX%23set_border%28%29&mode=module>`_
 


- \ **color=COLOR**\ 



- \ **bg_color=COLOR**\ 



- \ **font=FONTNAME**\ 
 
 FONTNAME may be quoted to protect spaces
 


- \ **font_strikeout**\ 



- \ **italic**\ 



- \ **num_format=NUMFORMAT**\ 



- \ **rotation=DEGREES**\ 
 
 DEGREES is any angle in the range -90 to 90.
 


- \ **underline**\ 




*********
POSITIONS
*********



- \ **<col><row>**\ 
 
 Example: \ **C7**\ 
 


- \ **<row>,<col>**\ 
 
 Example: \ **7,3**\ 
 



******
RANGES
******



- \ **<start>:<end>**\ 
 
 Example: \ **A1:C7**\ 
 


- \ **<row1>,<col1>:<row2>,<col2>**\ 
 
 Example: \ **1,1:7,3**\ 
 


- \ **/RE/:/RE/**\ 
 
 Example: \ **/Header/:/Totals?/**\ 
 
 Positions of different kinds can be combined to form a range.
 
 Example: \ **A1:/(?i)fin/**\ 
 
 This range will be from the first cell, until a cell containing "fin" (case-insensitive match)
 



********
SEE ALSO
********


`csv2xls code repository <https://github.com/lameventanas/csv2xls>`_

`Excel::Writer::XLSX code repository <https://github.com/jmcnamara/excel-writer-xlsx>`_


******
AUTHOR
******


Alan Mizrahi, lameventanas at gmail dot com

