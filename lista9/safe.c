#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include<gmp.h>
#include<sys/time.h>
#include<iostream>
#include<assert.h>
#include<time.h>
#include<string>
#include <boost/functional/hash.hpp>
using namespace std;
int keysize = 2048;

string getPublicKey()
{
    char key[20] = "rsapublic";
    FILE* fkey = fopen(key,"r");
    if(!fkey)
    {
        cout << "Klucz publiczny nie istnieje." << endl;
        return 0;
    }
    char buf[20000];
    fscanf(fkey,"%s\n",buf);
    fclose(fkey);
    return buf;
}


void generateKeys(int length)
{
    int keylength = length;
    int primesize = keylength / 2;
    mpz_t p;
    mpz_t q;
    mpz_t p_test;
    mpz_t q_test;
    mpz_t isprime;
    mpz_init(p);
    mpz_init(q);
    mpz_init(p_test);
    mpz_init(q_test);
    mpz_init(isprime);

    char* p_str = new char[primesize + 1];
    char* q_str = new char[primesize + 1];

    p_str[0] = '1';
    q_str[0] = '1';

    unsigned int time_elapsed;
    time((time_t*)&time_elapsed);
    srand(time_elapsed);
    while(1)
    {
	for(int i=1;i<primesize;i++)
        p_str[i] = (int)(2.0*rand()/(RAND_MAX+1.0)) + 48;

    	p_str[primesize] = '\0';
    	mpz_set_str(p,p_str,2);
	mpz_nextprime(p,p);
	mpz_sub_ui(p_test, p ,(unsigned long int)1);
	mpz_div_ui(p_test , p_test , (unsigned long int)2);
	mpz_sub_ui(isprime, p_test , (unsigned long int)1);
        mpz_nextprime(isprime,isprime);
	if(mpz_cmp(p_test , isprime) == 0)
	{	
		cout << "Wygenerowano pierwszą liczbę pierwszą." << endl;
		break;
	}
    }

     while(1)
    {
	for(int i=1;i<primesize;i++)
        q_str[i] = (int)(2.0*rand()/(RAND_MAX+1.0)) + 48;

    	q_str[primesize] = '\0';
    	mpz_set_str(q,q_str,2);
	mpz_nextprime(q,q);
	mpz_sub_ui(q_test, q ,(unsigned long int)1);
	mpz_div_ui(q_test , q_test , (unsigned long int)2);
	mpz_sub_ui(isprime, q_test , (unsigned long int)1);
        mpz_nextprime(isprime,isprime);
	if(mpz_cmp(q_test , isprime) == 0)
	{	
		cout << "Wygenerowano drugą liczbę pierwszą." << endl;
		break;
	}
        
    }

    char n_str[20000];
    mpz_t n;
    mpz_t x;
    mpz_init(n);
    mpz_init(x);

    mpz_mul(n,p,q);
    mpz_get_str(n_str,10,n);
    
    mpz_t p1;
    mpz_t q1;
    mpz_init(p1);
    mpz_init(q1);

    mpz_sub_ui(p1,p,(unsigned long int)1);
    mpz_sub_ui(q1,q,(unsigned long int)1);
    mpz_mul(x,p1,q1);

    mpz_t gcd;
    mpz_init(gcd);
    mpz_t e;
    mpz_init(e);
    mpz_t d;
    mpz_init(d);
    unsigned long int e_int = 65537;
     //unsigned long int e_int = 3;

    while(true)
    {
        mpz_gcd_ui(gcd,x,e_int);
        if(mpz_cmp_ui(gcd,(unsigned long int)1)==0) break;
        e_int += 2;
    }
    mpz_set_ui(e,e_int);

    char d_str[20000];
    char public_key_e[20000];
    char public_key_n[20000];

    if(mpz_invert(d,e,x)==0)
    {
        mpz_clear(p);
        mpz_clear(q);
        mpz_clear(x);
        mpz_clear(p1);
        mpz_clear(q1);
        mpz_clear(gcd);
        mpz_clear(e);
        mpz_clear(n);
        mpz_clear(d);
        generateKeys(keylength);
    }

    mpz_get_str(public_key_e,2,e);
    mpz_get_str(public_key_n,2,n);
    mpz_get_str(d_str,2,d);
    char publicFile[100] = "rsapublic";
    char privateFile[100] = "rsaprivate";
    
    //strcat(publicFile,"rsapublic");
    //strcat(privateFile,"rsaprivate");

    FILE* fpublic  = fopen(publicFile,"w");
    FILE* fprivate = fopen(privateFile,"w");

    fprintf(fpublic,"%s",public_key_n);
    fprintf(fpublic,"%s",public_key_e);
    fprintf(fprivate,"%s",public_key_n);
    fprintf(fprivate,"%s",d_str);

    fclose(fpublic);
    fclose(fprivate);
    mpz_clear(p);
    mpz_clear(q);
    mpz_clear(x);
    mpz_clear(p1);
    mpz_clear(q1);
    mpz_clear(gcd);
    mpz_clear(e);
    mpz_clear(n);
    mpz_clear(d);
}

void error(const char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
	string tryb;
	cout << "Wybierz rozmiar klucza: 1 - 512, 2 - 1024, 3 - 2048, 4 - 4096:";
        cin >> tryb;
        if(tryb == "1") keysize = 512;
        if(tryb == "2") keysize = 1024;
        if(tryb == "3") keysize = 2048;
        if(tryb == "4") keysize = 4096;

    	clock_t t1,t2;
    	t1=clock();
        generateKeys(keysize);
        cout << "Wygenerowano klucze: " << keysize << "bit" << endl;
	t2=clock();
    	float diff ((float)t2-(float)t1);
    	cout << "Program działał: - " << diff / CLOCKS_PER_SEC << "s" << endl;
        return 0;
}
