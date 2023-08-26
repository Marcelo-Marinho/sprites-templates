num = int(input('Você sabe o que fazer: '))

print('*' * num)

for i in range (0, num-2):
    print('*' + ' ' * (num-2) + '*')

print('*' * num)