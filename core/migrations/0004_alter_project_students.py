# Generated by Django 5.0 on 2023-12-08 19:19

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_alter_project_students'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='students',
            field=models.ManyToManyField(blank=True, null=True, related_name='projects', to=settings.AUTH_USER_MODEL),
        ),
    ]
