#! /usr/bin/env racket
#lang racket
(require "./main.rkt")
(require output)

(define $api-id (load-api (format "PROGRAM.x~a.dll" (system-type 'word))))
(dump $api-id)
(define $result (call-api$ $api-id "add2" (list 11 22)))
(dump $result)
(define $result2 (call-api $api-id "add2" 111 222))
(dump $result2)
(define $result3 (call-api $api-id "add2" 111 222 333))
(dump $result3)
