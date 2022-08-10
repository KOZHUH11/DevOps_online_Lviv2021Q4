
access_template = ['switchport mode access', 'switchport access vlan','spanning-tree portfast', 'spanning-tree bpduguard enable']

trunk_template = ['switchport trunk encapsulation dot1q', 'switchport mode trunk','switchport trunk allowed vlan']

access = {'0/12': '10','0/14': '11','0/16': '17','0/17': '150'}

trunk = {'0/1': ['add', '10', '20'],'0/2': ['only', '11', '30'],'0/4': ['del', '17']}

for intf, vlan in access.items(): 
    print('interface FastEthernet' + intf) 
    for command in access_template:
        if command.endswith('access vlan'):
            print(' {} {}'.format(command, vlan))
        else:
            print(' {}'.format(command))


for intf, vlan in trunk.items(): 
    print('interface FastEthernet' + intf) 
    a = trunk[intf]
    for command in trunk_template:
        b = ', '.join(str(x) for x in a[1:])
        if a[0] == 'add' and command.endswith('encapsulation dot1q'):
            print('{}  {} '.format(command, b)) 
        elif a[0] == 'del' and command.endswith('switchport mode trunk'):
            print(' {} {}'.format(command, b))
        elif a[0] == 'only' and command.endswith('switchport trunk allowed vlan'):
            print(' {} {}'.format(command, b))
        else:
            print(' {}'.format(command))

