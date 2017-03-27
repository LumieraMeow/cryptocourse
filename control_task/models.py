# -*- coding: UTF-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User
from course.models import *
# Модель Контрольное Задание    
class Control_task(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    title  = models.TextField()
    theory = models.TextField()
    
    class Meta:
        db_table = 'control_task'
        verbose_name = 'Контрольное задание'
        verbose_name_plural = 'Контрольные задания'
        #ordering = ['-created_at']

    def __unicode__(self):
        return self.title

# Модель вопрос к контрольному зданию
class Control_question(models.Model):
    control_task = models.ForeignKey(Control_task, on_delete=models.CASCADE)
    control_question = models.TextField()
    step = models.IntegerField()
    
    class Meta:
        db_table = 'control_question'
        verbose_name = 'Вопрос к контрольному зданию'
        verbose_name_plural = 'Вопросы к контрольному зданию'
        #ordering = ['-created_at']

    def __unicode__(self):
        return self.control_question
        
        
# Модель ответ на контрольное здание       
class Answer_control_task(models.Model):
    control_question = models.ForeignKey(Control_question, on_delete=models.CASCADE)
    answer_task = models.CharField(max_length=50)
    
    class Meta:
        db_table = 'answer_control_task'
        verbose_name = 'Ответ к контрольному зданию'
        verbose_name_plural = 'Ответы к контрольному зданию'
        #ordering = ['-created_at']

    def __unicode__(self):
        return self.control_question
        
# Модель Пройденное контрольное задание
class Attempts_control_task(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    control_task = models.ForeignKey(Control_task, on_delete=models.CASCADE)
    date_task = models.DateTimeField('date task')
    
    class Meta:
        db_table = 'attempts_control_task'
        verbose_name = 'Пройденное контрольное задание'
        verbose_name_plural = 'Пройденные контрольные задания'
        #ordering = ['-created_at']

    def __unicode__(self):
        return self.user
