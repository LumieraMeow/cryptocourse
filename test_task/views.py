# -*- coding: UTF-8 -*-
from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, Http404
from django.template.response import TemplateResponse
from django.core.context_processors import csrf
from django.shortcuts import redirect
from django.contrib import auth
from datetime import datetime, date, time
from django.utils import timezone
from django.views.decorators.csrf import csrf_exempt
from .models import *
import simplejson as json

@csrf_exempt
def index(request, course_id, test_task_id):
    # если пользователь авторизирован
    if request.user.is_authenticated():
        # Тест
        test = Test_task.objects.filter(course = course_id)[int(test_task_id)-1:int(test_task_id)+1]
        # Вопросы к тесту
        test_question_list = Test_question.objects.filter(test_task = test[0].id)
        # Ответы к тесту
        answer_list = Answer_test.objects.all()
        context = {'test': test[0],'test_question_list' : test_question_list, 'answer_list' : answer_list, 'course_id':course_id, 'test_task_id': test_task_id}
        # запрос о пройденном тесте
        if request.method == "POST" and request.is_ajax():
            # получение данных из запроса
            answers = json.loads(request.POST.get("answers"))
            grade = 0               #оценка
            user_answers = {}       #ответ пользователя
            # обработка результатов тестирования
            for key, value in answers.items():
                # создание списка ответов
                user_answers.update({int(key):value[:]})
                # получение списка ответов из базы
                ans_list = Answer_test.objects.filter(test_question = key)
                
                # проверка результатов
                for al in ans_list:
                    if al.answer == value[:] and al.true_false == True:
                        grade +=1
            grade = grade* 100/test_question_list.count()
            data = { 'date_task' : timezone.now(), 'grade' : grade}
            #сохранение выполненого задания
            attempts_test = Attempts_test.objects.update_or_create(user = request.user, test_task = test[0], defaults = data)
            context = {
                    'test_question_list' : test_question_list, 
                    'answer_list' : answer_list, 
                    'user_answers':user_answers, 
                    'grade':grade, 
                    'course_next': int(course_id)+1, }
            return TemplateResponse(request, 'test_task/test_result.html', context) 
        
        # запрос о начале тестирования
        elif request.is_ajax():
            return TemplateResponse(request, 'test_task/test_form.html', context)
        # первый рендеринг
        else:
            return render(request, 'test_task/test_task.html', context)
    # если пользователь не авторизировался
    else:
        return redirect("user_profile:login_view")
        
