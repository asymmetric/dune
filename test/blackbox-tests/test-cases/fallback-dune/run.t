fallback isn't allowed in dune

  $ dune build --root dune1
  Info: creating file dune-project with this contents: (lang dune 1.0)
  File "dune", line 2, characters 1-11:
  Error: 'fallback' was renamed to '(mode fallback)' in 1.0 of the dune language
  [1]

2nd fallback form isn't allowed either

  $ dune build --root dune2
  Info: creating file dune-project with this contents: (lang dune 1.0)
  File "dune", line 2, characters 1-17:
  Error: 'fallback' was renamed to '(mode fallback)' in 1.0 of the dune language
  [1]

But it is allowed in jbuilder

  $ jbuilder build --root jbuild
  Entering directory 'jbuild'
