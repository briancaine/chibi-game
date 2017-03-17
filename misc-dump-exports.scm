#!/usr/bin/csi

(use matchable srfi-1)

(define (define-c-struct-exports def)
  (match def
    (('define-c-struct name) '())
    (('define-c-struct name 'predicate: predicate . rest)
     (cons predicate
           (define-c-struct-exports `(define-c-struct ,name . ,rest))))
    (('define-c-struct name
       'constructor: (constructor . constructor-args) . rest)
     (cons constructor
           (define-c-struct-exports `(define-c-struct ,name . ,rest))))
    (('define-c-struct name (field-type field-name getter-setter) . rest)
     (cons getter-setter
           (define-c-struct-exports `(define-c-struct ,name . ,rest))))
    (_
     (error "bad c-struct-exports" def))))

(define (define-c-union-exports un)
  (match un
    (('define-c-union name) '())
    (('define-c-union name 'predicate: predicate . rest)
     (cons predicate
           (define-c-union-exports `(define-c-union ,name . ,rest))))
    (('define-c-union name
       'constructor: (constructor . constructor-args) . rest)
     (cons constructor
           (define-c-union-exports `(define-c-union ,name . ,rest))))
    (('define-c-union name (field-type field-name getter-setter) . rest)
     (cons getter-setter
           (define-c-union-exports `(define-c-union ,name . ,rest))))
    (_
     (error "bad c-union-exports" un))))

(define (exports-tree tree)
  (match tree
    (('c-include foo) '())
    (('begin . items)
     (concatenate (map exports-tree items)))
    (('define-c-const type const)
     (list const))
    (('define-c return-type func-name . rest)
     (list func-name))
    (('define-c-struct . rest)
     (define-c-struct-exports `(define-c-struct . ,rest)))
    (('define-c-union . rest)
     (define-c-union-exports `(define-c-union . ,rest)))
    (('c-declare . whichever) '())
    ((a . rest)
     (append (exports-tree a) (exports-tree rest)))
    (()
     '())))


;; debug
;; (define data (with-input-from-file "src/bc/sdl2.stub" read-file))
;; (pp (exports-tree data))
