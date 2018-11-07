;;; init.el --- dot-emacs setup through el-get

;; Copyright (C) 2018  Antoine Romain Dumont

;; Author: Antoine Romain Dumont <antoine.romain.dumont@gmail.com>
;; Keywords:

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

;;; Commentary:

;;

;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; install through el-get installer
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(el-get-bundle theme-pack
  (theme-pack-set-size)
  (theme-pack-dark)
  (global-theme-pack-mode))

(el-get-bundle buffer-pack (require 'buffer-pack))

(el-get-bundle git-pack (require 'git-pack))

(el-get-bundle w3m
  (require 'w3m)
  (custom-set-variables '(w3m-command "/usr/bin/w3m")))

(el-get-bundle prelude-pack
  (require 'prelude-pack)
  (global-prelude-pack-mode))

(el-get-bundle mail-pack
  (require 'mail-pack)
  ;; no need for overriding the load-path, el-get is already dealing
  ;; with it
  (custom-set-variables '(mail-pack-mail-indexer-install-folder nil)))

(el-get-bundle browser-pack (require 'browser-pack))

(el-get-bundle helm-pack (require 'helm-pack))

(el-get-bundle help-pack (require 'help-pack))

(el-get-bundle popup-pack (require 'popup-pack))

(el-get-bundle shell-pack (require 'shell-pack))

(el-get-bundle python-pack (require 'python-pack))

(el-get-bundle scratch-pack (require 'scratch-pack))

(el-get-bundle twitter-pack (require 'twitter-pack))

(el-get-bundle modeline-pack (require 'modeline-pack))

(el-get-bundle elisp-pack (require 'elisp-pack))

(el-get-bundle puppet-pack (require 'puppet-pack))

(el-get-bundle blog-pack (require 'blog-pack))

(el-get-bundle wiki-pack (require 'wiki-pack))

(el-get-bundle haskell-pack (require 'haskell-pack))

(el-get-bundle lisp-pack (require 'lisp-pack))

(el-get-bundle mercurial-pack (require 'mercurial-pack))

(el-get-bundle conkeror-pack (require 'conkeror-pack))

(el-get-bundle irc-pack (require 'irc-pack))

(el-get-bundle chat-pack (require 'chat-pack))

(el-get-bundle macro-pack (require 'macro-pack))

;; (el-get-bundle pres-pack (require 'pres-pack))

;; (el-get-bundle purescript-pack (require 'purescript-pack))

;; (el-get-bundle idris-pack (require 'idris-pack))

;; (el-get-bundle viewer-pack (require 'viewer-pack))

;; (el-get-bundle marmalade-pack (require 'marmalade-pack))

;; (el-get-bundle stumpwm-pack (require 'stumpwm-pack))

;; (el-get-bundle caml-pack (require 'caml-pack))

;; issue
;; (el-get-bundle orgmode-pack (require 'orgmode-pack))

;; issue
;; (el-get-bundle clojure-pack (require 'clojure-pack))

;; issue
;; (el-get-bundle scala-pack (require 'scala-pack))

;; issue
;; (el-get-bundle ctags-pack (require 'ctags-pack))

;; must be the last instruction
;; (el-get 'sync)
;;; init.el ends here
