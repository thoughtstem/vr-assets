#lang at-exp racket

(provide define/provide/doc-glbs)

(require 
  (only-in  vr-engine src gltf-model)
  racket/runtime-path
  syntax/parse/define
  (only-in scribble/manual image para)  
  (for-syntax racket))

(define-syntax (define/provide/doc-glbs stx)
  (syntax-parse stx
    [(_ path (id image extra components ...) ...)
    (define root (apply build-path (reverse
                                  (rest (reverse (explode-path (syntax-source stx)))))))
     #`(begin
         (define/provide/doc-glb 
           #,(build-path root (syntax->datum #'path))
           extra
           image
           id components ...) ...
         )]))

(define-syntax (define/provide/doc-glb stx)
  (syntax-parse stx
    [(_ abs-dir extra image id components ...)

     (define preview-path (build-path (syntax->datum #'abs-dir) (~a (syntax->datum #'id) ".png")))

     #`(begin
         (require scribble/srcdoc
                    (only-in vr-engine entity?))

         (require (for-doc racket))

         (begin-for-doc
           (require 
             (prefix-in s: scribble/manual)))

         (provide 
           (thing-doc id entity?
                      ( 

                        @(s:typeset-code  
                           (~a
                             "#lang racket\n"
                             "(require vr-engine)\n" 
                             "(require vr-assets)\n" 

                             "(vr-scene " 'id ")"
                             ))

                        (s:margin-note #,(syntax->datum #'extra)) 

                        (s:image #,preview-path)

                        )))

         (define glb-path (build-path abs-dir (~a 'id ".glb")))

         (define id
           (gltf-model #:components-list
                       (list 
                         (src glb-path)
                         components ...
                         )))
         )]))


#;
(define-syntax (define/provide-from-preview stx)
  (syntax-parse stx
    [(_ orig-dir image id components ...)

     (define my-path
       (~a (syntax->datum #'id) ".glb"))

     (define my-preview-path
       (build-path
         (~a (syntax->datum #'id) "-preview.png")))


     (displayln my-path)

     #`(begin
         (require scribble/srcdoc)
         (require (for-doc racket))

         (begin-for-doc
           (require 
             (prefix-in s: scribble/manual)))


         )]))
