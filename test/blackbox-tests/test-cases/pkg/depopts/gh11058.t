Reproduce github issue #11058

Handling of more than one depopt:

  $ . ../helpers.sh

  $ mkpkg bar <<'EOF'
  > depopts: [ "a" "b" "c" ]
  > EOF

  $ solve bar
  Internal error, please report upstream including the contents of _build/log.
  Description:
    ("invalid depopts",
     { depopts =
         Or [ Or [ Atom ("a", Empty); Atom ("b", Empty) ]; Atom ("c", Empty) ]
     })
  Raised at Stdune__Code_error.raise in file
    "otherlibs/stdune/src/code_error.ml", line 10, characters 30-62
  Called from Dune_pkg__Opam_solver.resolve_depopts in file
    "src/dune_pkg/opam_solver.ml", line 565, characters 3-21
  Called from Dune_pkg__Opam_solver.opam_package_to_lock_file_pkg in file
    "src/dune_pkg/opam_solver.ml", line 645, characters 6-48
  Called from Stdlib__List.rev_map.rmap_f in file "list.ml" (inlined), line
    105, characters 22-25
  Called from Stdlib__List.rev_map in file "list.ml", line 107, characters 2-13
  Called from Stdune__List.map in file "otherlibs/stdune/src/list.ml", line 5,
    characters 19-33
  Called from Dune_pkg__Opam_solver.solve_lock_dir.(fun) in file
    "src/dune_pkg/opam_solver.ml", lines 889-896, characters 8-30
  Called from Fiber__Scheduler.exec in file "vendor/fiber/src/scheduler.ml",
    line 79, characters 8-11
  Re-raised at Stdune__Exn.raise_with_backtrace in file
    "otherlibs/stdune/src/exn.ml", line 38, characters 27-56
  Called from Fiber__Scheduler.exec in file "vendor/fiber/src/scheduler.ml",
    line 79, characters 8-11
  
  I must not crash.  Uncertainty is the mind-killer. Exceptions are the
  little-death that brings total obliteration.  I will fully express my cases. 
  Execution will pass over me and through me.  And when it has gone past, I
  will unwind the stack along its path.  Where the cases are handled there will
  be nothing.  Only I will remain.
  [1]
