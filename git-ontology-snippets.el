;;; git-ontology-snippets.el --- Yasnippet snippets for git commits
;;
;; Copyright (C) 2022 Lord Valen
;;
;; Author: Lord Valen
;; Maintainer: Lord Valen
;; Version: 1.0.2
;; Keywords: convenience
;; Homepage: https://github.com/Lord-Valen/git-ontology-snippets
;; Package-Requires: ((yasnippet "0.14.0"))
;;
;;; Commentary:
;;
;;   Snippet collection for michaelmoreno/git-commit-ontology

;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:
(defconst git-ontology-snippets-dir
  (expand-file-name
   "snippets"
   (file-name-directory
    (cond (load-in-progress load-file-name)
          ((bound-and-true-p byte-compile-current-file)
           byte-compile-current-file)
          (buffer-file-name))))
  "`git-ontology-snippets' snippets dir.")

;;;###autoload
(defun git-ontology-snippets-initialize ()
 "Add the `git-ontology-snippets-dir' to `yas-snippet-dirs'."
 (add-to-list 'yas-snippet-dirs 'git-ontology-snippets-dir t)
 (yas-load-directory git-ontology-snippets-dir t))

;;;###autoload
(eval-after-load 'yasnippet #'(git-ontology-snippets-load))

(provide 'git-ontology-snippets)
;;; git-ontology-snippets.el ends here
