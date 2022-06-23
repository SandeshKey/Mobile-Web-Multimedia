#include<stdio.h>
#include<unistd.h>
int main()
{

printf("Hello soch");
fork();
printf(" I am process %d", getpid());
}