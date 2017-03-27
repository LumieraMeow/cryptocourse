# -*- coding: UTF-8 -*-
from django.shortcuts import render

# Create your views here.

from django.http import HttpResponse
from django.contrib import auth


def index(request):
    return render(request, 'course/home.html')