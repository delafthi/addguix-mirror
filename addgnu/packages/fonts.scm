(define-module (addgnu packages fonts)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system font))

(define-public nerd-font-victor-mono
  (package
   (name "nerd-font-victor-mono")
   (version "2.2.2")
   (source
    (origin
     (method url-fetch/zipbomb)
     (uri (string-append
           "https://github.com/ryanoasis/nerd-fonts/releases/download/v"
           version
           "/VictorMono.zip"))
     (sha256
      (base32 "0n46glk3036i9cjz8gnlmlyx4p7ynk10i647q1zdjlsnk6yiy9i1"))))
   (build-system font-build-system)
   (synopsis "Font with support for italics and ligatures")
   (description "Nerd Fonts is a project that patches developer targeted fonts with a high number of glyphs (icons). Specifically to add a high number of extra glyphs from popular 'iconic fonts' such as Font Awesome, Devicons, Octicons, and others.")
   (home-page "https://github.com/ryanoasis/nerd-fonts/")
   (license license:expat)))
