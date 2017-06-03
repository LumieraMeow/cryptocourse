
# -*- coding: UTF-8 -*-
from django.shortcuts import render, redirect
from django.views.generic.edit import FormView
from django.views.generic import View
from django.http import HttpResponse, Http404
from django.contrib.auth import authenticate, login
from .models import *
from .forms import * 
import json
import test_task, course
from django.utils import timezone

class UserFormView(View):
    form_class = UserForm

    # Шаблон, который будет использоваться при отображении представления.
    template_name = "user_profile/signup.html"
    
    def get(self, request):
        form = self.form_class(None)
        return render(request, self.template_name, {'form':form})
    
    def post(self, request):
        form = self.form_class(request.POST)
        if request.method == "POST" and request.is_ajax():
            if form.is_valid():
               # Создаём пользователя, если данные в форму были введены корректно.
                user = form.save(commit = False) 
                
                username = form.cleaned_data['username']
                password = form.cleaned_data['password']
                
                user.set_password(password) 
                user.save()
                
                user = authenticate(username = username, password = password)
                if user is not None:
                    if user.is_active:
                        login(request, user)
                        return HttpResponse("ok")
                    else:
                        return HttpResponse("not ok")
            else:
                    data = []
                    for k, v in form._errors.iteritems():
                        text = {
                            'desc': ', '.join(v),
                        }
                        if k == '__all__':
                            text['key'] = '#%s' % request.POST.get('form')
                        else:
                            text['key'] = '#id_%s' % k
                        data.append(text)
                    return HttpResponse(json.dumps(data))
        else:
            return render(request, self.template_name, {'form':form})
        
        
# LOGIN
def login_view(request):
    form = UserLoginForm(request.POST)
    
    if request.method == "POST" and request.is_ajax():
        if form.is_valid():
            username = form.cleaned_data["username"]
            password = form.cleaned_data["password"]
            user = authenticate(username=username, password=password)
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return HttpResponse("ok")
                else:
                    return HttpResponse("not ok")
        else:
                data = []
                for k, v in form._errors.iteritems():
                    text = {
                        'desc': ', '.join(v),
                    }
                    if k == '__all__':
                        text['key'] = '#%s' % request.POST.get('form')
                    else:
                        text['key'] = '#id_%s' % k
                    data.append(text)
                    print(text['key'])
                return HttpResponse(json.dumps(data))
    else:
        return render(request, "user_profile/signin.html", {'form': form})

#LOGOUT
def logout_view(request):
    logout(request)
    return redirect("/")

def index(request):
    if request.user.is_authenticated():
        values = []
        attempts_test = test_task.models.Attempts_test.objects.filter(user = request.user)
        all_task = course.models.Task.objects.count() - course.models.Attempts_task.objects.filter(user = request.user).count()
        attempts_task = course.models.Attempts_task.objects.filter(user = request.user).count()
        attempts_test_count = test_task.models.Attempts_test.objects.filter(user = request.user).count()
        
        progr = [['Осталось изучить', all_task], ['Изучено', attempts_task]]
        average_ball = 0
        for test in attempts_test:
            values.append([test.test_task, test.grade])
            average_ball+=test.grade
        if attempts_test.count() != 0:
            average_ball/=attempts_test.count()
        else:
            average_ball = 0
        context = {
            'values': values, 
            'progr' : progr, 
            'average_ball':average_ball, 
            'attempts_task':attempts_task, 
            'attempts_test_count':attempts_test_count
            
        }
        return render(request, "user_profile/profile.html", context)
    else:
        return redirect("user_profile:login_view")
        