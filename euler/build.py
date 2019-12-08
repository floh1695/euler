#!/usr/bin/python3

import subprocess

def equal_c(value):
  return lambda other: value == other

def any(l, f=None):
  if f == None:
    return len(l) > 0
  else:
    passed = list(filter(f, l))
    return any(passed)

def handle_pipe(pipe, f=None):
  out = pipe.read().decode('utf-8')

  if any(out):
    print(out)

  if f != None:
    f.write(out)

def process(args, out_f=None):
  p = subprocess.Popen(
    args,
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE)

  p.wait()

  handle_pipe(p.stdout, out_f)
  handle_pipe(p.stderr)

class JoinFile():
  def __init__(self, files):
    self._files = files

  def write(self, data):
    for f in self._files:
      f.write(data)

def build(commit=False):
  process(['stack', 'build'])
  with open('.report.secret.md', 'w+') as report, \
      open('.solutions.secret.md', 'w+') as solutions:
    to_join = [report]
    if commit:
      to_join.append(solutions)

    joined = JoinFile(to_join)

    process(['stack', 'run', 'euler-exe'], joined)

if __name__ == '__main__':
  import sys
  args = sys.argv[1:]

  commit = any(args, equal_c('--commit'))
  build(commit=commit)
