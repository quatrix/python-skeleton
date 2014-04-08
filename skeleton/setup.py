try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'author': 'AUTHOR',
    'author_email': 'AUTHOR_EMAIL',
    'version': "0.1.0",
    'install_requires': [],
    'packages': ['NAME'],
    'scripts': [],
    'name': 'NAME'
}

setup(**config)
