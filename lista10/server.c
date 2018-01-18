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

void generatePassword()
{
    boost::hash<std::string> string_hash;
    size_t h = string_hash("admin");
    char confFile[10] = "conf";
    FILE* fconf  = fopen(confFile,"w");
    fprintf(fconf,"%ld",h);
    fclose(fconf);
}

bool checkPassword(string pass)
{
    char confFile[10] = "conf";
    FILE* fconf = fopen(confFile,"r");
    if(!fconf)
    {
        cout << "Plik konfiguracyjny nie istnieje." << endl;
        return 0;
    }
    char buf[100];
    fscanf(fconf,"%s\n",buf);
    fclose(fconf);
    boost::hash<std::string> string_hash;
    size_t h = string_hash(pass);
    if(to_string(h) == buf) return true;
    else return false;
}

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

string getPrivateKey()
{
    char key[20] = "rsaprivate";
    FILE* fkey = fopen(key,"r");
    if(!fkey)
    {
        cout << "Klucz prywatny nie istnieje." << endl;
        return 0;
    }
    char buf[20000];
    fscanf(fkey,"%s\n",buf);
    fclose(fkey);
    return buf;
}

bool hasInverse(string num)
{
    const char* number = num.c_str();
    mpz_t w;
    mpz_init(w);
    mpz_t x;
    mpz_init(x);
    mpz_t n;
    mpz_init(n);

    string privkey = "";
    privkey = getPrivateKey(); 

    string N = privkey.substr(0,keysize);
    string d = privkey.substr(keysize);
    const char* mod = N.c_str();
    mpz_set_str(x,number,10);
    mpz_set_str(n,mod,10);

     if(mpz_invert(w,x,n)==0) return false;
     return true;
}


void generateKeys(int length)
{
    int keylength = length;
    int primesize = keylength / 2;
    mpz_t p;
    mpz_t q;
    mpz_init(p);
    mpz_init(q);

    char* p_str = new char[primesize + 1];
    char* q_str = new char[primesize + 1];

    p_str[0] = '1';
    q_str[0] = '1';

    unsigned int time_elapsed;
    time((time_t*)&time_elapsed);
    srand(time_elapsed);

    for(int i=1;i<primesize;i++)
        p_str[i] = (int)(2.0*rand()/(RAND_MAX+1.0)) + 48;

    for(int i=1;i<primesize;i++)
        q_str[i] = (int)(2.0*rand()/(RAND_MAX+1.0)) + 48;

    p_str[primesize] = '\0';
    q_str[primesize] = '\0';

    mpz_set_str(p,p_str,2);
    mpz_set_str(q,q_str,2);

    mpz_nextprime(p,p);
    mpz_nextprime(q,q);

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

string powmod(string x)
{
    mpz_t w;
    mpz_init(w);
    mpz_t n;
    mpz_init(n);
    mpz_t p;
    mpz_init(p);
    const char* number = x.c_str();
    string privkey = "";
    privkey = getPrivateKey(); 
    string N = privkey.substr(0,keysize);
    string d = privkey.substr(keysize);
    const char* mod = N.c_str();
    const char* pow = d.c_str();
    mpz_set_str(w,number,10);
cout << "number: " << number << endl;
    mpz_set_str(n,mod,2);
    mpz_set_str(p,pow,2);
//mpz_out_str(stdout, 10,w);
//cout << endl;
//mpz_out_str(stdout, 10,n);
//cout << endl;
//mpz_out_str(stdout, 10,p);
//cout << endl;

    mpz_powm(w,w,p,n);
    char result[20000] = "";
    mpz_get_str(result,10,w);
    return result;
}
void error(const char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
     string tryb = "";
     cout << "Wybierz tryb pracy serwera:" << endl;
     cin >> tryb;
     if(tryb == "setup")
     {
	cout << "Wybierz rozmiar klucza: 1 - 2048, 2 - 4096, 3 - 8192, 4 - 16384:";
        cin >> tryb;
        if(tryb == "1") keysize = 2048;
        if(tryb == "2") keysize = 4096;
        if(tryb == "3") keysize = 8192;
        if(tryb == "4") keysize = 16384;
       

        generateKeys(keysize);
        cout << "Wygenerowano klucze: " << keysize << "bit" << endl;
        generatePassword(); 
        cout << "Wygenerowano hasło: " << "admin" << endl;
        return 0;
     }
    if(tryb == "service")
    {
	    cout << "Wprowadź hasło:" << endl;
        cin >> tryb;
        if(checkPassword(tryb))
        {

			int sockfd, newsockfd, portno;
     		socklen_t clilen;
     		char buffer[16384];
     		struct sockaddr_in serv_addr, cli_addr;
     		int n;
     		//if (argc < 2) {
     		   // fprintf(stderr,"ERROR, no port provided\n");
     		   // exit(1);
    		// }
    		 sockfd =  socket(AF_INET, SOCK_STREAM, 0);
     		if (sockfd < 0) error("Nie można otworzyć gniazda.");

    	 bzero((char *) &serv_addr, sizeof(serv_addr));
    	 portno = 20001;
     	 serv_addr.sin_family = AF_INET;  
     	 serv_addr.sin_addr.s_addr = INADDR_ANY;  
     	 serv_addr.sin_port = htons(portno);
	
    
     	if(bind(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) error("Błąd połączenia.");
        listen(sockfd,5);

        clilen = sizeof(cli_addr);
        newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen);
        if (newsockfd < 0) error("Błąd akceptacji połączenia.");

        // This send() function sends the 13 bytes of the string to the new socket
        bzero(buffer,16384);

        n = read(newsockfd,buffer,16383);
        string buf = buffer;
        string a = buf;
	//cout << powmod(a) << endl;
        if(hasInverse(a))
        {
		string result = powmod(buf);
                cout << "result:" << result << endl;      
        }
        else
        {
			string result = "Niezgodność wiadomości.";
            strcpy(buffer, result.c_str());
		    send(newsockfd, buffer, result.length(), 0);
        }
        
        close(newsockfd);
        close(sockfd);
        }
        else 
	{
	    cout << "Niepoprawne hasło.";
	    return 0;
	}
    }
    else
    {
	cout << "Błędny tryb pracy.";
	return 0;
    }
     return 0;
}
