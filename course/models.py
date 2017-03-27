# -*- coding: UTF-8 -*-
from __future__ import unicode_literals

from django.db import models
from django.contrib.auth.models import User



# Модель Курс    
class Course(models.Model):
    course_name = models.CharField("Название", max_length=200)
    image = models.ImageField("Изображение", upload_to='course/static/images')
    details = models.TextField("Описание")
    class Meta:
        db_table = 'course'
        verbose_name = 'Курс'
        verbose_name_plural = 'Курсы'
        #ordering = ['-created_at']

    def __unicode__(self):
        return self.course_name

# Модель Задание    
class Task(models.Model):
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    title = models.TextField()
    theory = models.TextField()
    task = models.TextField()
    answer_task = models.CharField(max_length=50)
    
    class Meta:
        db_table = 'task'
        verbose_name = 'Задание'
        verbose_name_plural = 'Задания'
        #ordering = ['-created_at']

    def __unicode__(self):
        return self.title

# Модель Пройденное задание
class Attempts_task(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    task = models.ForeignKey(Task, on_delete=models.CASCADE)
    date_task = models.DateTimeField('date task')
    
    class Meta:
        db_table = 'attempts_task'
        verbose_name = 'Пройденное задание'
        verbose_name_plural = 'Пройденные задания'
        #ordering = ['-created_at']

    def __unicode__(self):
        return unicode(self.user)
