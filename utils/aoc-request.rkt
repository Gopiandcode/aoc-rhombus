#lang racket

(require net/http-client)
(provide request)

(define (request cookie day)
  (define-values (resp resp-headers inp)
    (http-sendrecv
     "adventofcode.com"
     (format "/2023/day/~a/input" day)
     #:headers (list
                "Host: adventofcode.com"
                "Accept: text/html"
                (format "Cookie: session=~a" cookie))
     #:ssl? #true))
  (port->string inp))
