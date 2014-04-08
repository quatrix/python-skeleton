Python Skeleton
======================

1. Creates a basic Python project skeleton (+tox)
2. Initializes a Git repository
3. Sets project name and takes author and author_email from git config

Usage
-----

Clone this repo

```
git clone https://github.com/quatrix/python-skeleton.git
```

```create_project.sh``` takes a project name and creates it in the ```$CWD```

```
python-skeleton/create_project.sh my_project
```

```
Initialized empty Git repository in /Users/quatrix/projects/python/my_project/.git/
[master (root-commit) 2b5c3b5] Started project my_project
 6 files changed, 34 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 MANIFEST.in
 create mode 100644 my_project/__init__.py
 create mode 100644 setup.py
 create mode 100644 tests/test_my_project.py
 create mode 100644 tox.ini
»
```

Cd into the project and run tox


```
cd my_project && tox 
```

It will build the virtualenv and run the single test that should fail

```
GLOB sdist-make: /Users/quatrix/projects/python/my_project/setup.py
py27 create: /Users/quatrix/projects/python/my_project/.tox/py27
py27 installdeps: nose
py27 inst: /Users/quatrix/projects/python/my_project/.tox/dist/my_project-0.1.0.zip
py27 runtests: PYTHONHASHSEED='1663213220'
py27 runtests: commands[0] | nosetests
F
======================================================================
FAIL: test_my_project.test_my_project
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/Users/quatrix/projects/python/my_project/.tox/py27/lib/python2.7/site-packages/nose/case.py", line 197, in runTest
    self.test(*self.arg)
  File "/Users/quatrix/projects/python/my_project/tests/test_my_project.py", line 2, in test_my_project
    assert False
AssertionError

----------------------------------------------------------------------
Ran 1 test in 0.007s

FAILED (failures=1)
ERROR: InvocationError: '/Users/quatrix/projects/python/my_project/.tox/py27/bin/nosetests'
__________________________________________________________________________ summary ___________________________________________________________________________
ERROR:   py27: commands failed
```

You're now ready to code!
