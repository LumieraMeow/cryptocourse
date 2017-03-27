# -*- coding: UTF-8 -*-

from django.conf.urls import url, include

from . import views

app_name = 'sdes'
urlpatterns = [
    # ex: /course/
    url(r'^$', views.index, name='index'),
    ]