(lang dune 3.9)

(name serverless_test)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name serverless_test)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends 
  (ocaml (= 5.1.1)) 
  (dune (>= 3.9.0))
  (base (= v0.16.3))
  (ppx_deriving (>= 5.2.1))

  (ocaml-lsp-server :dev)
  (ocamlformat :dev)
 )
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
