# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2017-02-14 12:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('course', '0008_auto_20170126_0909'),
    ]

    operations = [
        migrations.AddField(
            model_name='task',
            name='title',
            field=models.TextField(blank=True, null=True),
        ),
    ]
