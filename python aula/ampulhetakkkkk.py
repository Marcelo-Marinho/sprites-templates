'''
num = int(input('Você sabe o que fazer: '))

print('*' * num)

for i in range(0, (num - 2)//2):
    print(" " * (i+1) + '*' + ' ' * (((num - i - 2) //2)) + '*')
    print("(", num, "-", i, "- 2 =", (num - i - 2), ") //2 =", (((num - i - 2) //2)))

for i in range((num - 2)//2 -1, -1, -1):
    print(" " * (i+1) + '*' + ' ' * (((num - i - 2) //2)) + '*')

print('*' * num)
'''

def generate_pattern(n):
    print("[ / ]", end='')
    for x in range(n):
        print("[" + str('%3i'%x) + "]", end='')
    print()

    for i in range(n):
        print("[" + str('%3i'%i) + "]", end="")
        for j in range(n):
            if i == 0 or i == n - 1 or j == i or j == n - i - 1:
                print("[ X ]", end="")
            else:
                print("[   ]", end="")
        print()

while(True):
    input_value = input("Digite um número: ")
    try:
        generate_pattern(int(input_value))
    except:
        print("saindo...")
        break