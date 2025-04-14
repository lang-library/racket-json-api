#lang info
(define collection "json-api")
(define name "json-api package")
(define blurb '("json-api package"))
(define categories '(devtools))
(define can-be-loaded-with 'all)
(define required-core-version "5.1.1")
(define version "1.0")
(define repositories '("4.x"))
(define scribblings '(("json-api.scrbl")))
(define primary-file "main.rkt")
(define release-notes '((p "First release")))
(define deps '("compatibility-lib"
               "base"
               "output"
               "meta-json"
               ))
(define build-deps '("racket-doc"
                     "scribble-lib"))
