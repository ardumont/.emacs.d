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

(message "############# el-get init done, now personalize some more")

(el-get-bundle! theme-pack
  (theme-pack-set-size)
  (theme-pack-dark)
  (global-theme-pack-mode))

;; (message "############# module theme-pack loaded")

(el-get-bundle! buffer-pack)

;; (message "############# module buffer-pack loaded")

;; (el-get-bundle! git-pack)

;; (message "############# module git-pack loaded")

(el-get-bundle! w3m
  (custom-set-variables '(w3m-command "/usr/bin/w3m")))

(el-get-bundle! prelude-pack
  (global-prelude-pack-mode))

;; (message "############# module prelude-pack loaded")

;; (el-get-bundle! mail-pack
;;   ;; no need for overriding the load-path, el-get is already dealing
;;   ;; with it
;;   (custom-set-variables '(mail-pack-mail-indexer-install-folder nil)))

;; (message "############# module mail-pack loaded")

;; (el-get-bundle! browser-pack)

;; (message "############# module browser-pack loaded")

;; (el-get-bundle! helm-pack)

;; (message "############# module helm-pack loaded")

;; (el-get-bundle! help-pack)

;; (message "############# module help-pack loaded")

;; (el-get-bundle! popup-pack)

;; (message "############# module popup-pack loaded")

;; (el-get-bundle! shell-pack)

;; (message "############# module shell-pack loaded")

(el-get-bundle! python-pack)

;; (message "############# module python-pack loaded")

;; (el-get-bundle! scratch-pack)

;; (message "############# module scratch-pack loaded")

;; (el-get-bundle! twitter-pack)

;; (message "############# module twitter-pack loaded")

;; (el-get-bundle! modeline-pack)

;; (message "############# module modeline-pack loaded")

;; (el-get-bundle! lisp-pack)

;; (message "############# module lisp-pack loaded")

;; (el-get-bundle! elisp-pack)

;; (message "############# module elisp-pack loaded")

;; (el-get-bundle! puppet-pack)

;; (message "############# module puppet-pack loaded")

;; (el-get-bundle! blog-pack)

;; (message "############# module blog-pack loaded")

(el-get-bundle! wiki-pack)

;; (message "############# module wiki-pack loaded")

(el-get-bundle! haskell-pack)

;; (message "############# module haskell-pack loaded")

;; (el-get-bundle! mercurial-pack)

;; (message "############# module mercurial-pack loaded")

;; (el-get-bundle! conkeror-pack)

;; (message "############# module conkeror-pack loaded")

;; (el-get-bundle! irc-pack)

;; (message "############# module irc-pack loaded")

;; (el-get-bundle! macro-pack)

;; (message "############# module macro-pack loaded")

(el-get-bundle! pres-pack)

;; (message "############# module pres-pack loaded")

;; deactivate those
;; (el-get-bundle! purescript-pack)
;; (el-get-bundle! idris-pack)
;; (el-get-bundle! viewer-pack)
;; (el-get-bundle! marmalade-pack)
;; (el-get-bundle! stumpwm-pack)

;; issues with the following

;; (el-get-bundle! chat-pack)
;; (el-get-bundle! orgmode-pack)
;; (el-get-bundle! clojure-pack)
;; (el-get-bundle! scala-pack)
;; (el-get-bundle! caml-pack)

;; must be the last instruction
;; (el-get 'sync)
;;; init.el ends here
