(asdf:defsystem #:zzz-contact
  :description "New CLOG System"
  :author "some@one.com"
  :license  "BSD"
  :version "0.0.0"
  :serial t
  :depends-on (#:clog) ; add clog plugins here as #:plugin for run time
  :components ((:file "zzz-contact")
	       (:file "main")
	       ))

(asdf:defsystem #:zzz-contact/tools
  :depends-on (#:zzz-contact #:clog/tools) ; add clog plugins here as #:plugin/tools for design time
  :components ())

