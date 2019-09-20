#lang racket

;Gets the pngs, which can be auto-created with assets/generate-screenshots.rkt
;  if you have the screenshot-glb npm package installed.
(require define-assets-from)
(define-assets-from "assets") 

