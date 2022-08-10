def task(n):
    print('___'*5,"TASK" + n  ,'____'*5)


task("6.2")

def input_ip():
    ip = input("ввод IP-адреса в формате 10.0.1.1:  " )
    print(ip)
    return(ip)

def validate_ip(ip):
    a = ip.split('.')
    if len(a) != 4:
        return False
    for x in a:
        if not x.isdigit():
            return False
        i = int(x)
        if i < 0 or i > 255:
            return False
    return True


def ip_type(ip,k):
    if k == True:
        ip = ip.split('.')

        
        if int(ip[0]) in range(1,223):
            print('unicast')    
        elif int(ip[0]) in range(224,239):
            print('multicast')
        elif int(ip[0])== 255 and ip == ['255', '255', '255', '255']:
                print('local broadcast')
        elif int(ip[0])== 0 and ip == ['0', '0', '0', '0']:
            print('unassigned')
        else:
            print('unused')

    else:
        print('ip not correct')    


i = 0
while i<3:
    ip = input_ip()
    k = validate_ip(ip)
    if k == True:
        print(ip_type(ip,k))
        break
    else:
        print("IP isn`t corect")    
        i += 1
