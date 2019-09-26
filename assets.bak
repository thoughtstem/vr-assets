#lang at-exp racket

(require "./util/main.rkt"
         vr-engine 
         (prefix-in image: "./asset-images.rkt"))


(define/provide/doc-glbs "assets"

  (alien-plant-1
    image:alien-plant-1
    "This asset is 19 MB."  
    (scale 0.2 0.2 0.2))

  (baby-cactus
    image:baby-cactus
    "This asset is 7 MB. Credits: pixipui - https://sketchfab.com/3d-models/baby-cactus-2a403b03dbf64f1fb34cf35a295ba8b6"  
    (animation-mixer))

  (bunny-rabbit
    image:bunny-rabbit
    "This asset is 20.5 MB. Credits: DarkLordFlash - https://sketchfab.com/3d-models/animated-bunny-rabbit-critter-free-l-poly-3f8b61e440fe43059226a57f269b9b53 "  
    (scale 0.05 0.05 0.05))

  (bird
    image:bird
    "This asset is 1.3 MB. Credits: Charlie Tinley - https://sketchfab.com/3d-models/low-poly-bird-animated-82ada91f0ac64ab595fbc3dc994a3590 "  
    (animation-mixer))

  (magic-stone
    image:magic-stone
    "This asset is 29 MB. Credits: Rafi Azhar - https://sketchfab.com/3d-models/magic-stone-e932cbae15854c1eac01a192313c9942"  
    (animation-mixer))

  (willow-tree
    image:willow-tree
    "This asset is 24 MB. Credits: adam127 - https://sketchfab.com/3d-models/weeping-willow-tree-48c090ce93d543cf8b19d3c6f2b6788a "  
    (animation-mixer)
    (scale 0.05 0.05 0.05))

  (horse
    image:horse
    ""  
    (scale 0.05 0.05 0.05))

  (alien-plant-2
    image:alien-plant-2
    ""  
    )

  (astronaut
    image:astronaut
    ""  
    )

  (sword
    image:sword
    "This asset is 61 KB. Credits: aBlender"  
    )

  (thoughtstem-logo
    image:thoughtstem-logo
    "This asset is 378 KB. Credits: ThoughSTEM team"  
    ))






; ===== 3D MODEL ASSETS =====

; CARLOS BUST (618 KB)
; Credit: figure of Carlos Hererra scanned and edited by aBlender using Microsoft Kinect V2.
; Todo: convert to a single glb file

#;
(provide carlos-model)

#;
(define-runtime-path carlos-obj-path "assets/carlos_head.obj")
#;
(define-runtime-path carlos-mtl-path "assets/carlos_head.mtl")
#;
(define carlos-model
  (obj-model #:components-list
             (list (src carlos-obj-path)
                   (mtl carlos-mtl-path)
                   (rotation -90 0 0))))


