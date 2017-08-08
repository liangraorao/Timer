#-*-coding: utf-8-*-
def weight(we,nw):
	wei=str(we)
	aw=wei[-1]
	bw=wei[-2]
	if aw=='t' or aw=='T':
		wt=wei[:-2]
		float wt
		mw=0
	elif bw=='kg' or bw=='KG':
		wk=wei[:-3]
		float wk
		mw=1
	elif aw=='g' or aw=='G':
		wg=wei[:-2]
		float wg
		mw=2
	else:
		print('对不起，您所提供的单位不在计量范围内')
	if nw=='A' or nw=='a':
	#a=g,b=kg,c=t
		if mw==0:
			zw=wt*1000000
		elif mw==1:
			zw=wk*1000
		else:
			zw=wg
	elif nw=='B' or nw=='b':
		if mw==0:
			zw=wt*1000
		elif mw==1:
			zw=wk
		else:
			zw=wg/1000
	else nw=='C' or nw=='c':
		if mw==0:
			zw=wt
		elif mw==1:
			zw=wk/1000
		else:
			zw=wg/1000000
	print(zw)
number=input('请输入您要换算的重量')
unit=input('请输入您要换算成的单位')
weight(number,unit)
