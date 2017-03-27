# -*- coding: UTF-8 -*-

from django.conf.urls import url, include

from . import views

app_name = 'control_task'
urlpatterns = [
    # ex: /ctask/
    url(r'^$', views.index, name='index'),

]