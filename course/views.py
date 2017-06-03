# -*- coding: UTF-8 -*-

from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, Http404
from django.core.context_processors import csrf
from django.shortcuts import redirect
from django.contrib import auth
from django.utils import timezone
from .models import *
import test_task


#  Страница КУРСЫ
def index(request):
    if request.user.is_authenticated():
        latest_course_list = Course.objects.all()
        for c in range(len(latest_course_list)):
            latest_course_list[c].image_url = "/static/images/"+latest_course_list[c].image.url.split('/')[-1]
        context = {'latest_course_list': latest_course_list}
        return render(request, 'course/course.html', context)
    else:
        return redirect("user_profile:login_view")
   
# Список заданий    
def detail_course(request, course_id):
    if request.user.is_authenticated():
        course = Course.objects.get(id = course_id)
        task_list = Task.objects.filter(course = course_id)
        test_list = test_task.models.Test_task.objects.filter(course = course_id)
        context = {'course':course,'task_list': task_list, 'test_list':test_list}
        return render(request, 'course/detail_course.html', context)
    else:
        return redirect("user_profile:login_view")   
  
# Задание
def task(request, course_id, task_id):
    if request.user.is_authenticated():
        task = Task.objects.filter(course = course_id)[int(task_id)-1:int(task_id)+1]
        next_task = Task.objects.filter(course = course_id)[int(task_id):int(task_id)+2]
        
        if request.method == "POST" and request.is_ajax():
            inputtask = request.POST.get('inputtask', '')
            if task[0].answer_task == inputtask:
                data = { 'date_task' : timezone.now()}
            #сохранение выполненого задания
                attempts_task = Attempts_task.objects.update_or_create(user = request.user, task = task[0], defaults = data)
                print("ok")
                return HttpResponse("ok")
            else:
                print("not ok")
                return HttpResponse("not ok")
        else:
            if next_task:
                context = {'task': task[0], 'course_id': course_id, 'task_id':task_id, 'next_task': int(task_id)+1}
            else:
                context = {'task': task[0], 'course_id': course_id, 'task_id':task_id, 'test_id': 1 }
            return render(request, 'course/task.html', context)
    else:
        return redirect("user_profile:login_view")
        