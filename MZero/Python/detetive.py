score = 0

ans = input('Você conhecia a vitima? ').lower()[0]
score += 1 if ans == 's' else 0
ans = input('Você tinha algum problema com a vitima? ').lower()[0]
score += 1 if ans == 's' else 0
ans = input('Você viu a vitima antes do assaninato? ').lower()[0]
score += 1 if ans == 's' else 0
ans = input('A arma do crime é sua? ').lower()[0]
score += 1 if ans == 's' else 0
ans = input('Você gostaria que a vitima morrese? ').lower()[0]
score += 1 if ans == 's' else 0

if score >= 4:
    print('Culpado')
elif score >=3:
    print('Suspeito')
else:
    print('Inocente')