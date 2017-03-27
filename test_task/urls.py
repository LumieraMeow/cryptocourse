# -*- coding: UTF-8 -*-

from django.conf.urls import url

from . import views

app_name = 'test_task'
urlpatterns = [
    # ex: /tests/
    url(r'^(?P<course_id>[0-9]+)/(?P<test_task_id>[0-9]+)/', views.index, name='index'),
    # ex: /course/5/
]