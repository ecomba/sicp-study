; Alyssa P.. Hacker doesn't see why if needs to be provided as a special
; form. "Why can't I just define it as an ordinary procedure in terms of
; cond?" she asks. Alyssa's friend Eva Lu Ator claims this can be done,
; and she defines a new version of if:

(load "chapter01/newton.scm")
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Delighted, Alyssa uses the new-if to rewrite the square-root program:
;
; (define (sqrt-iter guess x)
; (new-if (good-enough? guess x)
;         guess
;         (sqrt-iter (improve guess x)
;                    x)))
;
; What happens when Alyssa attempts to use this to compute square roots?
; Explain.
;
; As the new-if procedure is not a special form in Scheme the applicative
; order evaluation will directly evaluate the sqrt-iter expression without
; letting the new-if statement decide which branch to follow (i.e. if the
; guess was good enough).
;
; 'if' being a special form does not follow the same rules as a defined 
; procedure, so that the applicative order evaluation does not apply in 
; that case.
