#include<reg51.h>
sbit wave=P1^0;
void delay();// user defined function for delay
void main() // main program starts
{
	wave  = 0;
	while(1){
		wave = 1;
		delay();
		wave = 0 ;
		delay(); // same time delay for logic 1 and for logic 0
	}
}
// delay function
void delay(){
	// use timer steps i.e. specific time delay
	unsigned char i;
	// using TMOD register
	TMOD = 0X10;
	for(i=0;i<14;i++){
		TH1 = 0X00;
		TL1 = 0X00;
		TR1  =1;
		while(TF1==0);
		TF1 = 0;
	} // 65536 pulses 14 times
	// 1 second time delay for approximately 92 lakhs pulses
	// for each pulse it will be 1/9.2 microseconds 
}