#lang racket

(require ffi/unsafe
         ffi/unsafe/define)
(require meta-json)

(define-ffi-definer define-json-api (ffi-lib "json-api-v1.dll"))
(define-json-api json_api_load_utf8 (_fun _string -> _int))
(define-json-api json_api_call_utf8 (_fun _int _string _string -> _string))

(define (load-api dll-name)
  (let ([api-id (json_api_load_utf8 dll-name)])
    (if (= api-id 0)
        (error "Could not load:" dll-name)
        api-id)))

(define (call-api api-id name args)
  (let ([result (from-json (json_api_call_utf8 api-id name (to-json args)))])
    (if (string? result)
        (error result)
        (list-ref result 0))))

(provide json_api_load_utf8
         json_api_call_utf8
         load-api
         call-api)
