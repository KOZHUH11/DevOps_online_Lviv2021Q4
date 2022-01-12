import math

def validate_param():
    i = 0
    while i <= 2:
        
        try:
            a = int(input("Enter nunber a:"))
            b = int(input("Enter number b:"))
            c = int(input("Enter number c:"))
        except ValueError:
            print("Enter corect numbers!")
            i += 1
            continue
        else:
            return a, b, c

def discriminant(a, b, c):
    discr = (b ** 2) - (4 * a * c)
    return discr

def roots(discr, a, b, c):
    if discr > 0:
        x1 = (-b + math.sqrt(discr)) / (2 * a)
        x2 = (-b - math.sqrt(discr)) / (2 * a)
        answer = x1, x2
        return answer
        
    elif discr == 0:
        x = -b / (2 * a)
        answer = x
        return answer
    else:
        print("Your squareequation  hasn`t  decision")

def solv_square(a, b, c):
    discr = discriminant(a, b, c)
    return roots(discr, a, b, c)
    
def square_print(a, b, c, res):
    print("Result :", res)



def main():
    valid_param = validate_param()
    a = valid_param[0]
    b = valid_param[1]
    c = valid_param[2]
    print("%dx^2 + %dx + %d = 0"%(a,b,c))
    
    res = solv_square(a, b, c)
    square_print(a, b, c, res)

main()
