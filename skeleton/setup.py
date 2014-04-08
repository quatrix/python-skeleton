from NAME import __version__

try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'author': 'AUTHOR',
    'author_email': 'AUTHOR_EMAIL',
    'version': __version__,
    'install_requires': ['nose'],
    'packages': ['NAME'],
    'scripts': [],
    'name': 'NAME'
}

setup(**config)
