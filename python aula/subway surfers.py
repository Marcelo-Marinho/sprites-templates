num = int(input('Digite um numero seu arrombado do krl: '))

for i in range(0, num//2):
    print(' ' * i, '*' * num)

if num % 2 != 0:
    print(' ' * (num//2), '*' * num)

for i in range(num//2 - 1, -1, -1):
    print(' ' * i, '*' * num)