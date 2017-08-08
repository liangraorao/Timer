#-*-coding: utf-8-*-
print('欢迎使用作绕牌体重计')
print('~~~~~~~~~~~~~~~~~~~~~~~~~~~')
print('''请输入你的身高(M)：

''')
heigh=input()
b=float(heigh)
print('''请输入你的体重(kg)：

''')
weight=input()
a='您的体重'
c=int(weight)
m=b*b
n=(c/m)
if(n<=18.5):
	print(a+'过轻')
elif(18.5<n<=25):
	print(a+'正常')
elif(25<n<=28):
	print(a+'过重')
elif(28<n<=32):
	print(a+'肥胖')
else:
	print(a+'严重肥胖')
print('~~~~~~~~~~~~~~~~~~~~~~~~~~~')
print('作绕体重计，体重计中的战斗机')