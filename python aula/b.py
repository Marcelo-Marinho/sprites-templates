num = int(input('Digite um numero seu arrombado do krl: '))

for i in range(0, num):
    print(" " * i + '*' + ' ' * ((num - i - 1) * 2) + '*')

for i in range(num - 1, -1, -1):
    print(" " * i + '*' + ' ' * ((num - i - 1) * 2) + '*')