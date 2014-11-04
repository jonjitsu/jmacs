
(provide 'jaw-test)

(require 'ert)
(require 'jaw)

(ert-deftest test-jaw-dirname ()
  "Test jaw-dirname"
  (should (equal "/abc/def" (jaw-dirname "/abc/def/ghi")))
  (should (equal "/abc/def" (jaw-dirname "/abc/def/ghi/")))
  (should (equal "/abc/def" (jaw-dirname "/abc/def/ghi.txt")))
  (should (equal "/abc" (jaw-dirname (jaw-dirname "/abc/def/ghi"))))
  (should (equal "/" (jaw-dirname "/abc")))
  (should (equal "/" (jaw-dirname "/")))
  (should (equal "" (jaw-dirname ""))))




(ert-deftest test-elisp-equal ()
  (should (equal "abc" "abc"))
  (should (equal "   " "   "))
  (should-not (equal " " "   "))
  (should-not (equal "  " "" ))
  (should (equal 123 123))
  (should-not (equal 123 "123"))
)
