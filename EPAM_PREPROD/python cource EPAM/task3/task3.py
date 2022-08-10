import string
import random
import argparse


def password_generator(lenght: int) -> str:
    
    symbols = string.ascii_lowercase
    symbols += string.ascii_uppercase
    symbols += string.punctuation
    symbols += string.digits

    
    result = random.choices(symbols, k=lenght)
    return ''.join(result)

templats = 'A4%d3%-%a2'

def tamplate(tamplates):
    read_tamplates =tamplates.split('%')
    
   
    pasword = ''
    
    for i in read_tamplates:
       
        
        if i[0] == 'A':
            symbols = string.ascii_uppercase
            len = int(i[1])
            result = random.choices(symbols, k = len )
            pasword += ''.join(result)
        elif i[0] == 'a':
            symbols = string.ascii_lowercase
            len = int(i[1])
            result = random.choices(symbols, k = len )
            pasword += ''.join(result)       
        elif i[0] == 'p':
            symbols = string.punctuation
            len = int(i[1])
            result = random.choices(symbols, k = len )
            pasword += ''.join(result)
        elif i[0] == 'd':
            symbols = string.digits
            len = int(i[1])
            result = random.choices(symbols, k = len )
            pasword += ''.join(result)
        elif i[0] =='-' or i[0] =='@':
            pasword += ''.join(i[0])
        elif i == '\n':
            pass
        else:
            print('not valid tamplate ')
    
    print(pasword)

def file_open(file_name):
    tamplates = ''
    print(tamplates)
    
    with open(file_name, "r") as file:
        for line in file:
            tamplates += line 

    print(tamplates.split('\n'))
    
    for i in tamplates.split('\n'):
        tamplate(i)


parser = argparse.ArgumentParser()
parser.add_argument('-l', '--lenght', help='len of the generate pasword', type=int , default=8)
parser.add_argument('-t', '--template', help='Set template for generate passwords', type=str, default='')
parser.add_argument('-f', '--file', help = 'Getting list of patterns from file and generate for each random password', type=str, default='')
parser.add_argument('-c', '--count', type=int, default=1, help=' number of passwords ')

args = parser.parse_args()

if args.lenght != 8:
    i = 1
    while   args.count >= i:
        i += 1
        print(password_generator(args.lenght))
        
elif args.template != '':
    i = 1
    while   args.count >= i:
        i += 1
        tamplate(args.template)
elif args.file != '':
    i = 1
    while   args.count >= i:
        i += 1
        file_open(args.file)
else :
    print(password_generator(args.lenght))