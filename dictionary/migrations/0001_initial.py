# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Word',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('finnish', models.CharField(unique=True, max_length=128)),
                ('english', models.CharField(max_length=128)),
                ('chinese', models.CharField(blank=True, max_length=128)),
                ('sentence', models.CharField(blank=True, max_length=256)),
                ('note', models.CharField(blank=True, max_length=256)),
                ('category', models.CharField(blank=True, max_length=128)),
                ('slug', models.SlugField(unique=True)),
                ('times_practiced', models.PositiveIntegerField(default=1)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
