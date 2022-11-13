DEBUG = True

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'postgres',
        'USER': 'postgres',
        'PASSWORD': 'postgres',
        'HOST': 'db',
        'PORT': 5432,
    }
}

STATIC_ROOT = '/app/static/'
MEDIA_ROOT = '/app/static/media/'
ALLOWED_HOSTS = ['*']

# Modules in use, commented modules that you won't use
MODULES = [
    'authentication',
    'base',
    'booth',
    'census',
    'mixnet',
    'postproc',
    'store',
    'visualizer',
    'voting',
]

BASEURL = 'http://nginx:80'

APIS = {
    'authentication': 'http://nginx:80',
    'base': 'http://nginx:80',
    'booth': 'http://nginx:80',
    'census': 'http://nginx:80',
    'mixnet': 'http://nginx:80',
    'postproc': 'http://nginx:80',
    'store': 'http://nginx:80',
    'visualizer': 'http://nginx:80',
    'voting': 'http://nginx:80',
}
