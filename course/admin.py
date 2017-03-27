# -*- coding: UTF-8 -*-
from django.contrib import admin
from nested_inline.admin import NestedStackedInline, NestedModelAdmin
from .models import *
# Register your models here.
admin.site.unregister(User)
admin.site.register(User)

'''admin.site.register(Control_question)
admin.site.register(Answer_control_task)

admin.site.register(Attempts_control_task)
admin.site.register(Attempts_test)'''

'''

class Answer_control_taskInline(NestedStackedInline):
    model = Answer_control_task
    extra = 1
    fk_name = 'control_question'
    
class Control_questionInline(NestedStackedInline):
    model = Control_question
    extra = 1 
    fk_name = 'control_task'
    inlines = [Answer_control_taskInline]
    
class Control_taskAdmin(NestedModelAdmin):
    fields = ( 'course', 'theory')
    inlines = [ Control_questionInline ]   
        
  ''' 
admin.site.register(Attempts_task)
class TaskInline(admin.StackedInline):
    model = Task
    extra = 1

class CourseAdmin(admin.ModelAdmin):
    fieldsets = [
        (None,               {'fields': ['course_name', 'image', 'details']}),
    ]
    inlines = [ TaskInline ]



admin.site.register(Course, CourseAdmin)
#admin.site.register(Control_task, Control_taskAdmin)
#admin.site.register(Control_task)