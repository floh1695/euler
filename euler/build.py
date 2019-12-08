#!/usr/bin/python3

import subprocess

def any(iterr):
  return len(iterr) > 0

def process(args, out_f=None):
  p = subprocess.Popen(
    args,
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE)

  p.wait()

  stdout = p.stdout \
    .read() \
    .decode('utf-8')

  stderr = p.stderr \
    .read() \
    .decode('utf-8')

  if any(stdout):
    print(stdout)

  if any(stderr):
    print(stderr)

  if out_f != None:
    out_f.write(stdout)

def build():
  process(['stack', 'build'])
  with open('.report.secret.md', 'w+') as results:
    process(['stack', 'run', 'euler-exe'], out_f=results)

if __name__ == '__main__':
  build()
