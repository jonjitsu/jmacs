## GOALS:
1. Rethink the structure for emacs configurations. The idea of profiles which are just entry points into a particular config tree to be used by starting separate emacs instances with particular purposes.

## 1. File structure

profiles/
  contains the profile.el entry point.
  
packages/
  where the emacs package manager stores it's packages to be used in different profiles.
  
libraries/
  Generic custom code.
  
bin/
  jmacs  # profile bootstrapper
  
  
```bash

bin/jmacs ruby   # fires up an emacs with a ruby environment setup.

```
