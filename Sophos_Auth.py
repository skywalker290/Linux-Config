import requests
import time
import urllib.request
import os

def login(username,password):
    payload = {
        'mode': '191',
        'username': username,
        'password': password,
        'a': '1661062428616'
    }
    
    with requests.Session() as s:
        p = s.post('http://172.16.68.6:8090/login.xml', data=payload)
        if(p.status_code==200):
            print("Connecting!")
        else:
            print("Error Response:"+p);


def connect(host='https://google.com'):
    try:
        urllib.request.urlopen(host) 
        return True
    except:
        return False


def logout(username,password):
    payload = {
        'mode': '193',
        'username': username,
        'password': password,
        'a': '1661076221551'
    }

    with requests.Session() as s:
        p = s.post('http://172.16.68.6:8090/logout.xml', data=payload)

        # r = s.get('http://172.16.68.6:8090/')
        # print(r)


def connect(host='https://google.com'):
    try:
        urllib.request.urlopen(host) #Python 3.x
        return True
    except:
        return False


def stayconnected(username,password):
    logout('21103016','178045HI')
    print("========================================")
    print("<<CONNECTED %s>>"%(username));
    counter=0;
    counter1=0;
    while(1>0):
        
        try:
            print(1);
            if(connect()==False ):
                print(2);
                login(username,password)
                if(connect()==False):
                    print("'>>>>>{'UNABLE TO CONNECT'}<<<<<<'")
                    username=input("Enter username:");
                    username="211030"+username;
                    counter1=1;
                elif(connect()==True and counter1==1):
                    print("========================================")
                    print("<<CONNECTED %s>>"%(username));
                    counter1=0;
                
        except:
            if(counter==0):
                print("Internet Away");
                counter=1;

while(1>0):
    session =login('21103016','178045HI');
    print(time.time_ns)
    # session =login('net11','jiit@111');
    time.sleep(2400);


# logout('21103015','178045HI');




# for i in range(100):
#     print(i);
#     time.sleep(2);
