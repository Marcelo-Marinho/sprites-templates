num = int(input('Digite um numero seu arrombado do krl: '))

for i in range(1, num, 2):
    print(' ' * ((num - i)//2) + '*' * (i))

if num % 2 != 0:
    print('*' * num)

for i in range(num - 1, -1, -2):
    if num % 2 != 0:
        print(' ' * ((num - i)//2 + 1) + '*' * (i - 1))
    else:
        print(' ' * ((num - i)//2) + '*' * (i))