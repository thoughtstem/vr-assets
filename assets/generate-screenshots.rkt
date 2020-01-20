#lang racket

;Note: You'll need to install screenshot-glb
;  https://github.com/Shopify/screenshot-glb.git

(module+ main

  (fold-files
    (lambda (f type _2)
      (when (eq? type 'file)
        (define base (first (string-split (~a f) ".")))
        (define type (second (string-split (~a f) ".")))

        (when (string=? type "glb")
          (define f-png (~a base ".png"))

          (displayln f)
          (system 
            (~a "screenshot-glb -i " f " -o " f-png " -w 400 -h 400")))))
    (void)))
