#-*-coding: utf-8-*-
def weight(we,nw):
	wei=str(we)
	aw=wei[-1:]
	bw=wei[-2:]
	if aw=='t' or aw=='T':
		wt0=wei[:-1]
		wt=float (wt0)
		mw=0
	elif bw=='kg' or bw=='KG':
		wk0=wei[:-2]
		wk=float (wk0)
		mw=1
	elif aw=='g' or aw=='G':
		wg0=wei[:-1]
		wg=float (wg0)
		mw=2
	else:
		print('对不起，您所提供的单位不在计算范围内')
	if nw=='g' or nw=='G':
	#a=g,b=kg,c=t
		if mw==0:
			zw=wt*1000000
		elif mw==1:
			zw=wk*1000
		else:
			zw=wg
		print(zw)
	elif nw=='kg' or nw=='KG':
		if mw==0:
			zw=wt*1000
		elif mw==1:
			zw=wk
		else:
			zw=wg/1000
		print(zw)
	elif nw=='t' or nw=='T':
		if mw==0:
			zw=wt
		elif mw==1:
			zw=wk/1000
		else:
			zw=wg/1000000
		print(zw)
	else:
		print('对不起，您所提供的单位不在计算范围内')
print('\n\n欢迎使用\"作绕牌\"重量换算器')
F='~'
print(F*30)
number=input('请输入您要换算的重量(g/kg/t)\n')
unit=input('请输入您要换算成的单位\n')
weight(number,unit)
