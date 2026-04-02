;; Pin Guix to the revision that packaged KiCad 9.0.8, the last 9.x update
;; before the 10.0.0 transition.
(list (channel
        (name 'guix)
        (url "https://git.guix.gnu.org/guix.git")
        (branch "master")
        (commit
          "2cf3c7ee5d07ee1180859e1e9b6f78cb23b9d000")
        (introduction
          (make-channel-introduction
            "9edb3f66fd807b096b48283debdcddccfea34bad"
            (openpgp-fingerprint
              "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA")))))
