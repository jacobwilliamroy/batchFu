(define (script-fu-scale-all value dir)
  (let* (                                        ;BEGIN DECLARE LOCAL VARIABLES
;//    (inWidth (car (gimp-image-width img)))       ;image width
;//    (inHeight (car (gimp-image-height img)))     ;image height
;//    (inRatio (/ (- inWidth value) value))        ;shrink ratio
    (inStream (dir-open-stream dir))             ;opens a directory stream that must be closed
    (inRead (dir-read-entry inStream))
    (inPath (string-append dir "\\" inRead))
    (img)
    )                                            ;END DECLARE LOCAL VARIABLES
    (set! img (gimp-file-load 1 inPath inRead))
  )
;/    (if
;/      (> (- width value) 0)                      check if image needs to be shrunk
;/      (gimp-image-scale img (* inRatio inWidth) (* inRatio inHeight))
;/    )
;/  )
)
(script-fu-register
  "script-fu-scale-all"                       ;func name
  "Scale-all"                                 ;menu label
  "Scales down all open images\
    to width specified by user"               ;description
  ""                                          ;author
  ""                                          ;copyright notice
  ""                                          ;date created
  ""                                          ;image type that the script works on
;//  SF-IMAGE       "IMAGE"         1            ;active image
;//  SF-DRAWABLE    "LAYER"         0            ;active layer
  SF-VALUE       "500"           "500"        ;the desired int width
  SF-DIRNAME     "c:/path/dir" "c:/users/me/pictures"
;///  SF-OPTION "Run mode" '("Recursive" "Non-recursive")
)
(script-fu-menu-register "script-fu-scale-all" "<Image>/Image")
