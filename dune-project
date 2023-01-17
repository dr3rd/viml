(lang dune 2.6)
(generate_opam_files true)
(package
 (name viml)
 (synopsis "Viml")
 (description
  "Viml")
 (depends
  (cmdliner
   (>= 1.1.0))
  (lwt
   (>= 4.2.0))
  (notty
   (>= 0.2.2))
))
