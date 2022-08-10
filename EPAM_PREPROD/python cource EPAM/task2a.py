
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
print(vlanss)
print(vlanss[-1].split(','))

task('4')

vlans = [10, 20, 30, 1, 2, 100, 10, 30, 3, 4, 10]
print(vlans)
vlans = sorted(vlans)
print('\n', set(vlans))

task('5')

command1 = 'switchport trunk allowed vlan 1,2,3,5,8' 
command2 = 'switchport trunk allowed vlan 1,3,8,9'
print(command1,'\n', command2)

cc1 = command1.split()
c1 = set(cc1[-1].split(','))

cc2 = command2.split()
c2 = set(cc2[-1].split(','))

print('\n', c2.intersection(c2) )

task('6')

ospf_route = 'O 10.0.24.0/24 [110/41] via 10.0.13.3, 3d18h,FastEthernet0/0'

task("6.1")

mac = ['aabb:cc80:7000', 'aabb:dd80:7340', 'aabb:ee80:7000', 'aabb:ff80:7000']
mac_cisko = list()

for i in mac:

    k = i.replace(':','.')
    mac_cisko.append(k)

print("MAC:", mac)
print("MAC_CISKO:",  mac_cisko)
