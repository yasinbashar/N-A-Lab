#include<bits/stdc++.h>
using namespace std;
int main()
{
    int i,j,k,n=3;

    float A[n+1][n+2],c,x[n+1],sum=0.0;

    cout<<"Enter the augmented matrix row wise:"<<endl;
    for(i=1;i<=n;i++)
    {
        for(j=1;j<=n+1;j++)
        {
            cin>>A[i][j];
        }
    }

     for(j=1;j<=n;j++)
    {
        for(i=1;i<=n;i++)
        {
            if(i>j)
            {
               c=A[i][j]/A[j][j];
            for(k=1;k<=n+1;k++)
            {
                A[i][k]=A[i][k]-c*A[j][k];
            }
            }
        }
    }

    x[n]=A[n][n+1]/A[n][n];
    //for backward substitution
    for(i=n-1;i>=1;i--)
    {
        sum=0;
        for(j=i+1;j<=n;j++)
        {
            sum=sum+A[i][j]*x[j];
        }
        x[i]=(A[i][n+1]-sum)/A[i][i];
    }

    cout<<"The Solution is:";
    for(i=1;i<=n;i++)
    {
        printf("\nx%d=%.2f\t",i,x[i]);
    }
    cout<<endl;
    cout<<endl;


    double v = x[1]*6*6 + x[2]*6 + x[3];
    printf("Velocity at t=6 second :v = %.2lf",v);


    return 0;
}




