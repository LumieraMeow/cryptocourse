# -*- coding: UTF-8 -*-
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, get_object_or_404

from fractions import gcd

def Factor(n):
   Ans = []
   d = 2
   while d * d <= n:
       if n % d == 0:
           Ans.append(str(d))
           n //= d
       else:
           d += 1
   if n > 1:
       Ans.append(str(n))
   return Ans
    
def index(request):
    
    #p, q, n, f = 0
    d_list = []
    if request.method == "POST" and request.is_ajax():
        
        if request.POST.get('p', ''):
            p = int(request.POST.get('p', ''))
            q = int(request.POST.get('q', ''))
            n= p*q
            f = (p-1)*(q-1)
            d = []
            i = f+1
            while len(d)<30:
                if gcd(i,f)==1:
                    d.append(str(i))
                i+=f
            d_list = ', '.join(d)
            data = {'n': n, 'f': f, 'd_list': d_list}
            return JsonResponse(data)
            
        if request.POST.get('k', ''):
            if Factor(int(request.POST.get('k', '')))[0] == request.POST.get('k', ''):
                data = "Вы ввели простое число."
            else:
                data = '*'.join(Factor(int(request.POST.get('k', ''))))
            return HttpResponse(data)
        
        if request.POST.get('e', ''):
            e = int(request.POST.get('e', ''))
            d = int(request.POST.get('d', ''))
            n = int(request.POST.get('n', ''))
            f = int(request.POST.get('f', ''))
            
            if e*d%f==1:
                if gcd(e,f)==1:
                    if gcd(d,f)==1:
                        data = "e и d могут быть компонентами ключа"
                    else:
                        data = "d и φ не взаимно просты"
                else:
                    data = "e и φ не взаимно просты"
            else:
                data = "(e*d)mod φ != 1"

            return HttpResponse(data)
    else:
        return render(request, 'calcRSA/rsa.html')
