TITLE Data Definitions
INCLUDE Irvine32.inc

.data
value1 BYTE 'A'
value BYTE 0

.code
main PROC

mov ah, 'A'
add ah, 0

exit
main ENDF
END main