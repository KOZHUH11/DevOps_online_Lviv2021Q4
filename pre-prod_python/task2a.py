
def task(n):
    print('___'*5,"TASK" + n  ,'____'*5)

task('1')
NAT =  "ip nat inside source list ACL interface FastEthernet0/1 overload"

print('\n NAT:', NAT)

print ('\n NAT_2:', NAT.replace('Fast', 'Gigabit'))

task('2')

mac = 'AAAA:BBBB:CCCC'

print('\n', mac )
print('\n', mac.replace(':','.'))

task('3')
config = 'switchport trunk allowed vlan 1,3,10,20,30,100'

print(config , '\n', )

vlanss = config.split()

print(vlanss[-1].split(','))

task('4')

vlans = [10, 20, 30, 1, 2, 100, 10, 30, 3, 4, 10]
print(vlans)

