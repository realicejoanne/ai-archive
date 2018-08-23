/*
	Nama		: Patricia Joanne
	NPM			: 140810160065
	Tgl buat	: 20/05/18
	Deskripsi	: Backprop AND 2 input, 3 hidden layer, 1 output

****************************************************************/

#include<iostream>
#include<math.h>

using namespace std;

main(){
	int x1[]={1,1,0,0};
	int x2[]={1,0,1,0};
	int t[]={1,0,0,0};
	
	float lRate=0.2;
	float z[3][4];
	float zin[3][4];
	float wx1[]={0.2,0.3,-0.1};
	float wx2[]={0.3,0.1,-0.1};
	float b1[]={-0.3,0.3,0.3};
	float b2=-0.1;
	float wz1=0.5;
	float wz2=-0.3;
	float wz3=-0.4;
	float yin[4];
	float y[4];
	float MSE;
	float error[4];
	float delta1[3];
	float delta2;
	float deltain[3];
	int epoh=1;
	
	do {
		cout<<"\nEpoh ke-"<<epoh<<endl;
		
		for(int i=0;i<4;i++){
			cout<<"\nData ke-"<<(i+1)<<endl;
			
			for(int j=0;j<3;j++){
				zin[j][i]=b1[j]+(x1[i]*wx1[j])+(x2[i]*wx2[j]);
				z[j][i]=1/(1+exp(-(zin[j][i])));
				cout<<"Zin"<<(j+1)<<"\t: "<<zin[j][i]<<endl;
				cout<<"Z"<<(j+1)<<"\t: "<<z[j][i]<<endl;
			}
			
			yin[i]=b2+(z[0][i]*wz1)+(z[1][i]*wz2)+(z[2][i]*wz3);
			y[i]=1/(1+exp(-(yin[i])));
			cout<<"yin"<<"\t: "<<yin[i]<<endl;
			cout<<"y"<<"\t: "<<y[i]<<endl;
			
			error[i]=t[i]-y[i];
			delta2=error[i]*y[i]*(1-y[i]);
			deltain[0]=delta2*wz1;
			deltain[1]=delta2*wz2;
			deltain[2]=delta2*wz3;
			
			for(int j=0;j<3;j++){
				delta1[j]=deltain[j]*z[j][i]*(1-z[j][i]);
			}
			
			wz1=wz1+(lRate*(delta2*z[0][i]));
			wz2=wz2+(lRate*(delta2*z[1][i]));
			wz3=wz3+(lRate*(delta2*z[2][i]));
			b2=b2+(lRate*delta2);
			for(int j=0;j<3;j++){
				wx1[j]=wx1[j]+(lRate*(delta1[j]*x1[i]));
				wx2[j]=wx2[j]+(lRate*(delta1[j]*x2[i]));
				b1[j]=b1[j]+(lRate*delta1[j]);
			}
		}
		cout<<"\nBobot dan bias yang baru: "<<endl;
		for(int i=0;i<3;i++){
			cout<<"WX1"<<(i+1)<<"\t: "<<wx1[i]<<endl;
			cout<<"WX2"<<(i+1)<<"\t: "<<wx2[i]<<endl;
			cout<<"b1"<<(i+1)<<"\t: "<<b1[i]<<endl;
		}
		cout<<"WZ1\t: "<<wz1<<endl;
		cout<<"WZ2\t: "<<wz2<<endl;
		cout<<"WZ3\t: "<<wz3<<endl;
		cout<<"b2\t: "<<b2<<endl;
		for(int i=0;i<4;i++){
			MSE+=((error[i]*error[i])/4);
		}
		cout<<"MSE\t: "<<MSE<<endl;
		epoh++;
	}
	while(MSE<0.9);
}
	
	
	
	
	
	
	
	
	