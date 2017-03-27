# -*- coding: UTF-8 -*-
from django.contrib.auth.models import User
from django import forms
from django.contrib.auth import authenticate, login, logout, get_user_model

class UserForm(forms.ModelForm):
    password = forms.CharField(label=u'Пароль', widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    class Meta:
        model = User
        fields = ['username', 'email', 'password']
        widgets = {
            'username': forms.TextInput(attrs={'class': 'form-control'}),
            'email': forms.TextInput(attrs={'class': 'form-control'}),
        }
        
    '''def clean(self):
        if not self._errors:
            cleaned_data = super(UserForm, self).clean()
            username = self.cleaned_data.get("username")
            email = self.cleaned_data.get("email")
            password = self.cleaned_data.get("password")
            try:
                user = User.objects.get(username=username)
                if  user.check_username(username):
                    raise forms.ValidationError(u'Пользователь с таким именем уже существует.')
                elif not user.is_active:
                    raise forms.ValidationError(u'Пользователь с таким именем заблокирован.')
            except User.DoesNotExist:
                raise forms.ValidationError(u'Пользователь с таким именем не существует.')
            return cleaned_data
        '''
        
class UserLoginForm(forms.Form):
    username = forms.CharField(label=u"Имя пользователя", widget=forms.TextInput(attrs={'class': 'form-control'}))
    password = forms.CharField(label=u"Пароль", widget=forms.PasswordInput(attrs={'class': 'form-control'}))
    
    def clean(self):
        if not self._errors:
            cleaned_data = super(UserLoginForm, self).clean()
            username = self.cleaned_data.get("username")
            password = self.cleaned_data.get("password")
            try:
                user = User.objects.get(username=username)
                if not user.check_password(password):
                    raise forms.ValidationError(u'Неверное сочетание Имя \ Пароль.')
                elif not user.is_active:
                    raise forms.ValidationError(u'Пользователь с таким именем заблокирован.')
            except User.DoesNotExist:
                raise forms.ValidationError(u'Пользователь с таким именем не существует.')
            return cleaned_data