# -*- coding: UTF-8 -*-
from django.contrib import admin
from nested_inline.admin import NestedStackedInline, NestedModelAdmin
from .models import *

admin.site.unregister(User)
admin.site.register(User)

class Answer_control_taskInline(NestedStackedInline):
    model = Answer_control_task
    extra = 1
    fk_name = 'control_question'
    
class Control_questionInline(NestedStackedInline):
    model = Control_question
    extra = 1 
    fk_name = 'control_task'
    inlines = [Answer_control_taskInline]
    
class Control_taskInline(NestedModelAdmin):
    fields = ('course', 'title', 'theory')
    inlines = [
        Control_questionInline
        ]
        
admin.site.register(Control_task, Control_taskInline)
admin.site.register(Attempts_control_task)