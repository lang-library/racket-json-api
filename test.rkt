#! /usr/bin/env racket
#lang racket
(require "./main.rkt")
(require output)

(define $api-id (load-api "PROGRAM.dll"))
(dump $api-id)
(define $result (call-api $api-id "add2" (list 11 22)))
(dump $result)
(define $result2 (call-api* $api-id "add2" 111 222))
(dump $result2)
