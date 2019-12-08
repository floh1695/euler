#!/usr/bin/python3

import subprocess

def process(args, out_f=None):
  p = subprocess.Popen(
    args,
    stdout=subprocess.PIPE)

  p.wait()

  stdout = p.stdout \
    .read() \
    .decode('utf-8')

  print(stdout)

  if out_f != None:
    out_f.write(stdout)

def build():
  process(['stack', 'build'])
  with open('.report.secret.md', 'w+') as results:
    process(['stack', 'run', 'euler-exe'], out_f=results)

if __name__ == '__main__':
  build()
