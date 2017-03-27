# -*- coding: UTF-8 -*-

from django.conf.urls import url, include

from . import views

app_name = 'course'
urlpatterns = [
    # ex: /course/
    url(r'^$', views.index, name='index'),
    # ex: /course/5/
    url(r'^(?P<course_id>[0-9]+)/$', views.detail_course, name='detail_course'),
    url(r'^(?P<course_id>[0-9]+)/(?P<task_id>[0-9]+)/', views.task, name='task'),
    #url(r'^(?P<course_id>[0-9]+)/test/', include('test_task.urls', namespace="test_task")),
]