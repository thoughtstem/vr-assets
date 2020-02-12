#lang at-exp racket

(require "./util/main.rkt"
         define-assets-from 
         (rename-in vr-engine
                    [scale vr:scale]
                    [color vr:color]
                    [rotation vr:rotation]
                    )
         (prefix-in image: "./asset-images.rkt"))

;textures
(define-assets-from "assets/textures/vektorDex"
  (for-all-assets (para "Artist Credit: vektorDex. See: "
                        (link "https://opengameart.org/users/vektordex" "Here") ".")))

(define-assets-from "assets/textures/solar-system-scope"
  (for-all-assets (para "Artist Credit: Solar System Scope based off NASA images. See: "
                        (link "https://www.solarsystemscope.com/textures/" "Here") ".")))

(define-assets-from "assets/textures/TinyWorlds"
  (for-all-assets (para "Artist Credit: Rick Hoppman. See: "
                        (link "https://opengameart.org/users/tinyworlds" "Here") ".")))

(define-assets-from "assets/textures/rubberduck"
  (for-all-assets (para "Artist Credit: rubberduck. See: "
                        (link "https://opengameart.org/users/rubberduck" "Here") ".")))

(define-assets-from "assets/textures")

;----

(define/provide/doc-glbs "assets"

  (alien-plant-1
    image:alien-plant-1
    "This asset is 19 MB."  
    (vr:scale 0.2 0.2 0.2))

  ;(baby-cactus ;not rendering
  ;  image:baby-cactus
  ;  "This asset is 7 MB. Credits: pixipui - https://sketchfab.com/3d-models/baby-cactus-2a403b03dbf64f1fb34cf35a295ba8b6"  
  ;  (animation-mixer))

  (bunny-rabbit
    image:bunny-rabbit
    "This asset is 20.5 MB. Credits: DarkLordFlash - https://sketchfab.com/3d-models/animated-bunny-rabbit-critter-free-l-poly-3f8b61e440fe43059226a57f269b9b53 "  
    (vr:scale 0.05 0.05 0.05))

  (bird
    image:bird
    "This asset is 1.3 MB. Credits: Charlie Tinley - https://sketchfab.com/3d-models/low-poly-bird-animated-82ada91f0ac64ab595fbc3dc994a3590 "  
    (animation-mixer))

  (magic-stone
    image:magic-stone
    "This asset is 29 MB. Credits: Rafi Azhar - https://sketchfab.com/3d-models/magic-stone-e932cbae15854c1eac01a192313c9942"  
    (animation-mixer))

  ;(willow-tree ;not rendering
  ;  image:willow-tree
  ;  "This asset is 24 MB. Credits: adam127 - https://sketchfab.com/3d-models/weeping-willow-tree-48c090ce93d543cf8b19d3c6f2b6788a "  
  ;  (animation-mixer)
  ;  (vr:scale 0.05 0.05 0.05))

  (horse
    image:horse
    ""  
    (vr:scale 0.05 0.05 0.05))

  (alien-plant-2
    image:alien-plant-2
    ""  
    )

  (astronaut
    image:astronaut
    ""  
    (vr:scale 0.05 0.05 0.05))

  (sword
    image:sword
    "This asset is 61 KB. Credits: aBlender"  
    )

  (thoughtstem-logo
    image:thoughtstem-logo
    "This asset is 378 KB. Credits: ThoughSTEM team"  
    )

  ; === NEW ASEETS FOR 3d-orbit
  (flying-saucer-1
   image:flying-saucer-1
   "This asset is 97 KB. Credits: https://poly.google.com/view/fojR5i3h_nh")
  
  (flying-saucer-2
   image:flying-saucer-2
   "This asset is 54.3 KB. Credits: https://poly.google.com/view/3xbYnZNpJQ3"
   (vr:scale 0.003 0.003 0.003))

  (international-space-station
   image:internationla-space-station
   "This asset is 3.31 MB. Credits: https://poly.google.com/view/d3Fq5H6ne8E"
   (vr:scale 0.3 0.3 0.3))

  (asteroids
   image:asteroids
   "This asset is 597 KB. Credits: https://poly.google.com/view/enaIlQWET9a"
   (vr:scale 0.3 0.3 0.3))

  (satellite-1
   image:satellite-1
   "This asset is 1.32 MB. Credits: https://poly.google.com/view/1C3zb8Q9USk"
   (vr:scale 0.3 0.3 0.3))

  (satellite-2
   image:satellite-2
   "This asset is 74.7 KB. Credits: https://poly.google.com/view/fmYHY1leH_P"
   (vr:scale 0.05 0.05 0.05))

  (satellite-3
   image:satellite-3
   "This asset is 220 KB. Credits: https://poly.google.com/view/2i9NPgZ-ALP"
   (vr:scale 0.01 0.01 0.01))

  (satellite-4
   image:satellite-4
   "This asset is 220 KB. Credits: https://poly.google.com/view/eu5kRApngBL"
   (vr:scale 0.005 0.005 0.005))

  (spaceship
   img:spaceship
   "This asset is 539 KB. Credits: https://poly.google.com/view/diV_lzJhYgF"
   (vr:scale 5 5 5)
   (vr:rotation 90 0 0)
   )

  (space-shuttle
   img:space-shuttle
   "This asset is 2.05 MB. Credits: https://poly.google.com/view/djxolbz_CYC"
   (vr:scale 0.2 0.2 0.2))

  (space-rocket
   img:space-rocket
   "This asset is 26.2 KB. Credits: https://poly.google.com/view/c3DPjGP3mNB"
   (vr:scale 0.0001 0.0001 0.0001))
  )






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


