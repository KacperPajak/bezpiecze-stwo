#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
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
int keysize = 16;

string getPublicKey()
{
    char key[20] = "rsapublic";
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

string powmod(string x)
{
    mpz_t w;
    mpz_init(w);
    mpz_t n;
    mpz_init(n);
    mpz_t p;
    mpz_init(p);
    const char* number = x.c_str();

    string pubkey = "";
    pubkey = getPublicKey(); 
    string N = pubkey.substr(0,keysize);
    string e = pubkey.substr(keysize);
    const char* mod = N.c_str();
    const char* pow = e.c_str();
    mpz_set_str(w,number,10);
    mpz_set_str(n,mod,2);
    mpz_set_str(p,pow,2);

    mpz_powm(w,w,p,n);
    char result[20000] = "";
    mpz_get_str(result,10,w);
    return result;
}

void error(const char *msg)
{
    perror(msg);
    exit(0);
}

int main(int argc, char *argv[])
{
    int sockfd, portno, n;
    struct sockaddr_in serv_addr;
    struct hostent *server;

    char buffer[16384];
   
    portno = atoi(argv[2]);
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) 
        error("ERROR opening socket");
    server = gethostbyname(argv[1]);
    if (server == NULL) {
        fprintf(stderr,"ERROR, no such host\n");
        exit(0);
    }
    bzero((char *) &serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr, 
         (char *)&serv_addr.sin_addr.s_addr,
         server->h_length);
    serv_addr.sin_port = htons(portno);
    if (connect(sockfd, (struct sockaddr *) &serv_addr, sizeof(serv_addr)) < 0) 
        error("ERROR connecting");


    printf("Please enter the message: ");
    bzero(buffer,16384);
    fgets(buffer,16384,stdin);
    string buf = buffer;
    string result = powmod(buf);
cout << result << endl << endl;
    strcpy(buffer, result.c_str());
    n = write(sockfd, buffer, strlen(buffer));
    if (n < 0) 
         error("ERROR writing to socket");
    bzero(buffer,16384);
    //n = read(sockfd, buffer, 16384);
    //if (n < 0) 
    //     error("ERROR reading from socket");
    //printf("%s\n", buffer);
    close(sockfd);
    return 0;
}
