	 ORG 800H  
	 RST 2  
	 SUI 48  
	 MOV D,A  
	 MVI A,0DH  
	 RST 1  
	 MVI A,0AH  
	 RST 1  
	 MVI C,0  
	 MVI E,80  
PETLAXX  
	 INR B  
	 INR H  
	 MVI A,88  
	 RST 1  
	 MOV A,E  
	 CMP H  
	 JZ LINIAX  
	 MOV A,D  
	 MVI C,0  
	 CMP B  
	 JZ PETLAXS  
	 JMP PETLAXX  
PETLAXS  
	 INR C  
	 INR H  
	 MVI A,32  
	 RST 1  
	 MOV A,E  
	 CMP H  
	 JZ LINIAS  
	 MOV A,D  
	 CMP C  
	 MVI B,0  
	 JZ PETLAXX  
	 JMP PETLAXS  
LINIAX  
	 MVI H,0  
	 INR L  
	 MOV A,D  
	 CMP L  
	 MVI B,0  
	 JZ ZMIANAKOLX  
	 JMP PETLAXS  
LINIAS  
	 MVI H,0  
	 INR L  
	 MOV A,D  
	 CMP L  
	 MVI C,0  
	 JZ ZMIANAKOLS  
	 JMP PETLAXX  
ZMIANAKOLS  
	 MVI B,0  
	 MVI C,0  
	 MVI H,0  
	 MVI L,0  
	 JMP PETLAXS  
ZMIANAKOLX  
	 MVI B,0  
	 MVI C,0  
	 MVI H,0  
	 MVI L,0  
	 JMP PETLAXX  
HALT  
