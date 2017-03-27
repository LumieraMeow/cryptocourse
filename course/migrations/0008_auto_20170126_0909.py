# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2017-01-26 09:09
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0007_auto_20170113_1422'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='answer_control_task',
            name='control_question',
        ),
        migrations.RemoveField(
            model_name='answer_test',
            name='test_question',
        ),
        migrations.RemoveField(
            model_name='attempts_control_task',
            name='control_task',
        ),
        migrations.RemoveField(
            model_name='attempts_control_task',
            name='user',
        ),
        migrations.RemoveField(
            model_name='attempts_test',
            name='test',
        ),
        migrations.RemoveField(
            model_name='attempts_test',
            name='user',
        ),
        migrations.RemoveField(
            model_name='control_question',
            name='control_task',
        ),
        migrations.RemoveField(
            model_name='control_task',
            name='course',
        ),
        migrations.RemoveField(
            model_name='test',
            name='course',
        ),
        migrations.RemoveField(
            model_name='test_question',
            name='test',
        ),
        migrations.AlterField(
            model_name='attempts_task',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
        migrations.DeleteModel(
            name='Answer_control_task',
        ),
        migrations.DeleteModel(
            name='Answer_test',
        ),
        migrations.DeleteModel(
            name='Attempts_control_task',
        ),
        migrations.DeleteModel(
            name='Attempts_test',
        ),
        migrations.DeleteModel(
            name='Control_question',
        ),
        migrations.DeleteModel(
            name='Control_task',
        ),
        migrations.DeleteModel(
            name='Test',
        ),
        migrations.DeleteModel(
            name='Test_question',
        ),
        migrations.DeleteModel(
            name='User',
        ),
    ]