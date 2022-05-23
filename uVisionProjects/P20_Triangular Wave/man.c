#include<reg51.h>
void main(){
	P1 = 0X00;
	while(1){
		do{
			P1+=0X05; // gradually increasing the current on the port pin till it reaches the peak value i.e. 0XFF
		} while(P1<0XFF);
		do{
			P1-=0X05; // gradually decreasing the current on the port pin till it reaches the low i.e. 0X00
		} while(P1 > 0X00);
	}
}