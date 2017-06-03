from django.contrib import admin
from nested_inline.admin import NestedStackedInline, NestedModelAdmin
from .models import *
# Register your models here.
admin.site.unregister(User)
admin.site.register(User)


class Answer_testInline(NestedStackedInline):
    model = Answer_test
    extra = 1
    fk_name = 'test_question'
    
class Test_questionInline(NestedStackedInline):
    model = Test_question
    extra = 1 
    fk_name = 'test_task'
    inlines = [Answer_testInline]
    
class Test_taskInline(NestedModelAdmin):
    fields = ('course', 'name_test')
    inlines = [
        Test_questionInline
        ]
        
admin.site.register(Test_task, Test_taskInline)
admin.site.register(Attempts_test)