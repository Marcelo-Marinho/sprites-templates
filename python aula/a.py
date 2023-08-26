num = int(input('Digite um numero seu arrombado do krl: '))

for i in range(0, num - 1):
    print(' ' * i, '*')

for i in range(num - 1, -1, -1):
    print(' ' * i, '*')