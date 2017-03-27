# -*- coding: UTF-8 -*-
from django.conf.urls import patterns, include, url

from . import views

app_name = 'user_profile'
urlpatterns = [
    # ex: /course/
    url(r'^$', views.index, name='index'),
    url(r'^register/$', views.UserFormView.as_view(), name='register'),
    url(r'^login/$', views.login_view, name='login_view'),
    url(r'^logout/$', views.logout_view, name='logout_view'),
]