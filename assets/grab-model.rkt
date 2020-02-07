#lang racket

(module+ main
  (require net/url)

  ;Note: You'll need to install screenshot-glb
  ;  https://github.com/Shopify/screenshot-glb.git


  (define url-string (make-parameter #f))
  (define out-file (make-parameter #f)) 

  (define args (current-command-line-arguments))

  (url-string (vector-ref args 0))
  (out-file (vector-ref args 1))

  (define base
    (first (string-split (out-file) ".")))

  (define out-file-png (~a base ".png"))

  (define url (string->url (url-string)))

  (call-with-output-file (out-file) 
                         (lambda (p) 
                           (display (port->bytes (get-pure-port #:redirections 10 url)) p))
                         #:exists 'replace)

  (system 
    (~a "screenshot-glb -i " (out-file) " -o " out-file-png " -w 400 -h 400"))

  )
