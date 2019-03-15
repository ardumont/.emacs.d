;;; init.el --- dot-emacs setup through el-get

;; Copyright (C) 2018  Antoine R. Dumont (@ardumont)
;; Author: Antoine R. Dumont (@ardumont) <antoine.romain.dumont@gmail.com>
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

(message "### el-get init loading")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; install through el-get installer
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (let* ((baseurl "https://raw.githubusercontent.com")
	     (repo "dimitri/el-get")
	     (path "master/el-get-install.el")
	     (url (format "%s/%s/%s" baseurl repo path)))
	(url-retrieve-synchronously url))
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(message "### el-get init done. Packs loading!")
;; (setq el-get-bundle-byte-compile nil)

;; for notification issues (el-get includes a fallback on this lib
;; when failure)
(el-get-install 'notify)

(el-get-bundle! el-get-pack
  (global-el-get-pack-mode)
  (message "### el-get-pack loaded"))

(el-get-bundle! theme-pack
  (global-theme-pack-mode)
  (theme-pack-set-size)
  (theme-pack-dark)
  (message "### theme-pack loaded"))

(el-get-bundle! w3m
  (custom-set-variables '(w3m-command "/usr/bin/w3m"))
  (message "### w3m loaded"))

(el-get-bundle! prelude-pack
  (global-prelude-pack-mode)
  (message "### prelude-pack loaded"))

(el-get-bundle! mail-pack
  ;; no need to override load-path, el-get deals with it
  (custom-set-variables '(mail-pack-mail-indexer-install-folder nil))
  (mail-pack-load-pack)
  (message "### mail-pack loaded"))

(el-get-bundle! weechat-pack
  (global-weechat-pack-mode)
  (message "### weechat-pack loaded"))

(el-get-bundle! buffer-pack
  (global-buffer-pack-mode)
  (message "### buffer-pack loaded"))

(el-get-bundle! git-pack
  (global-git-pack-mode)
  (message "### git-pack loaded"))

(el-get-bundle! prog-mode-pack (message "### prog-mode-pack loaded"))
(el-get-bundle! helm-pack (message "### helm-pack loaded"))
(el-get-bundle! help-pack (message "### help-pack loaded"))
(el-get-bundle! popup-pack (message "### popup-pack loaded"))
(el-get-bundle! modeline-pack (message "### modeline-pack loaded"))
(el-get-bundle! shell-pack (message "### shell-pack loaded"))
(el-get-bundle! orgmode-pack (message "### orgmode-pack loaded"))
(el-get-bundle! python-pack (message "### python-pack loaded"))
(el-get-bundle! twitter-pack (message "### twitter-pack loaded"))
(el-get-bundle! lisp-pack (message "### lisp-pack loaded"))
(el-get-bundle! elisp-pack (message "### elisp-pack loaded"))
(el-get-bundle! puppet-pack (message "### puppet-pack loaded"))
(el-get-bundle! blog-pack (message "### blog-pack loaded"))
(el-get-bundle! wiki-pack (message "### wiki-pack loaded"))
(el-get-bundle! haskell-pack (message "### haskell-pack loaded"))
(el-get-bundle! irc-pack (message "### irc-pack loaded"))
(el-get-bundle! mercurial-pack (message "### mercurial-pack loaded"))
(el-get-bundle! conkeror-pack (message "### conkeror-pack loaded"))
(el-get-bundle! pres-pack (message "### pres-pack loaded"))
(el-get-bundle! browser-pack (message "### browser-pack loaded"))
(el-get-bundle! scratch-pack (message "### scratch-pack loaded"))
(el-get-bundle! viewer-pack (message "### viewer-pack loaded"))
(el-get-bundle! marmalade-pack (message "### marmalade-pack loaded"))
(el-get-bundle! nix-pack (message "### nix-pack loaded"))

;; deactivate those
;; (el-get-bundle! macro-pack (message "### macro-pack loaded"))
;; (el-get-bundle! purescript-pack (message "### purescript-pack loaded"))
;; (el-get-bundle! idris-pack (message "### idris-pack loaded"))
;; (el-get-bundle! stumpwm-pack (message "### stumpwm-pack loaded"))

;; issues with the following

;; (el-get-bundle! chat-pack (message "### chat-pack loaded"))
;; (el-get-bundle! clojure-pack (message "### clojure-pack loaded"))
;; (el-get-bundle! scala-pack (message "### scala-pack loaded"))
;; (el-get-bundle! caml-pack (message "### caml-pack loaded"))

(message "### Packs loading done!")

;; (when (not (daemonp))
;;   (server-start))

;; must be the last instruction
;; (el-get 'sync)
;;; init.el ends here
