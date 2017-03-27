# -*- coding: UTF-8 -*-
from __future__ import unicode_literals

from django.db import models
from course.models import *
# Create your models here.
# Модель тест   
class Test_task(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    name_test = models.TextField()
    
    class Meta:
        db_table = 'test_task'
        verbose_name = 'Тест'
        verbose_name_plural = 'Тесты'
        #ordering = ['-created_at']

    def __unicode__(self):
        return self.name_test

# Модель вопрос к тесту
class Test_question(models.Model):
    test_task = models.ForeignKey(Test_task, on_delete=models.CASCADE)
    question_text = models.TextField()
    
    class Meta:
        db_table = 'test_question'
        verbose_name = 'Вопрос к тесту'
        verbose_name_plural = 'Вопросы к тесту'
        #ordering = ['-created_at']

    def __unicode__(self):
        return unicode(self.question_text)
        
        
# Модель ответ на  тест       
class Answer_test(models.Model):
    test_question = models.ForeignKey(Test_question, on_delete=models.CASCADE)
    answer = models.CharField(max_length=50)
    true_false = models.BooleanField()
    
    class Meta:
        db_table = 'answer_test'
        verbose_name = 'Ответ к тесту'
        verbose_name_plural = 'Ответы к тесту'
        #ordering = ['-created_at']

    def __unicode__(self):
        return unicode(self.test_question)
        
# Модель Пройденный контрольный тест
class Attempts_test(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    test_task = models.ForeignKey(Test_task, on_delete=models.CASCADE)
    date_task = models.DateTimeField('date task')
    grade = models.IntegerField()
    
    class Meta:
        db_table = 'attempts_test'
        verbose_name = 'Пройденный тест'
        verbose_name_plural = 'Пройденные тесты'
        #ordering = ['-created_at']

    def __unicode__(self):
        return unicode(self.user)