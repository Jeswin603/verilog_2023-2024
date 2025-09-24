#include stdio.h

int main()
{
    chara a[6]="b,b,n,a,b,a";
    chara b;

    for(int i =0;i<6;i++)
    {
        chara b=chara a[i];
        for(int j =0;j<6;j++)
        if(chara b==chara a[j])
        {
            print("%s",chara b);
        }

    }
}