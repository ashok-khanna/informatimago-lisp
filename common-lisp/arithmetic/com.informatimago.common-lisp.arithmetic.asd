;;;; -*- mode:lisp;coding:utf-8 -*-
;;;;**************************************************************************
;;;;FILE:               com.informatimago.common-lisp.arithmetic.asd
;;;;LANGUAGE:           Common-Lisp
;;;;SYSTEM:             Common-Lisp
;;;;USER-INTERFACE:     NONE
;;;;DESCRIPTION
;;;;
;;;;    ASD file to load the com.informatimago.common-lisp.arithmetic library.
;;;;
;;;;AUTHORS
;;;;    <PJB> Pascal J. Bourguignon <pjb@informatimago.com>
;;;;MODIFICATIONS
;;;;    2012-02-05 <PJB> Added p127n2.
;;;;    2010-10-31 <PJB> Created this .asd file.
;;;;BUGS
;;;;LEGAL
;;;;    AGPL3
;;;;
;;;;    Copyright Pascal J. Bourguignon 2010 - 2016
;;;;
;;;;    This program is free software: you can redistribute it and/or modify
;;;;    it under the terms of the GNU Affero General Public License as published by
;;;;    the Free Software Foundation, either version 3 of the License, or
;;;;    (at your option) any later version.
;;;;
;;;;    This program is distributed in the hope that it will be useful,
;;;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;;    GNU Affero General Public License for more details.
;;;;
;;;;    You should have received a copy of the GNU Affero General Public License
;;;;    along with this program.  If not, see http://www.gnu.org/licenses/
;;;;**************************************************************************

(asdf:defsystem "com.informatimago.common-lisp.arithmetic"
  ;; system attributes:
  :description  "Informatimago Common Lisp Arithmetic"
  :long-description  "Arithmetic tools, primes, factorization."
  :author     "Pascal J. Bourguignon <pjb@informatimago.com>"
  :maintainer "Pascal J. Bourguignon <pjb@informatimago.com>"
  :licence "AGPL3"
  ;; component attributes:
  :version "1.5.0"
  :properties ((#:author-email                   . "pjb@informatimago.com")
               (#:date                           . "Autumn 2010")
               ((#:albert #:output-dir)          . "/tmp/documentation/com.informatimago.common-lisp.arithmetic/")
               ((#:albert #:formats)             . ("docbook"))
               ((#:albert #:docbook #:template)  . "book")
               ((#:albert #:docbook #:bgcolor)   . "white")
               ((#:albert #:docbook #:textcolor) . "black"))
  #+asdf-unicode :encoding #+asdf-unicode :utf-8
  :depends-on ("com.informatimago.common-lisp.cesarum")
  :components ((:file "primes" :depends-on ())
               (:file "p127n2" :depends-on ())
               (:file "algebra"         :depends-on ()))
  #+adsf3 :in-order-to #+adsf3 ((asdf:test-op (asdf:test-op "com.informatimago.common-lisp.arithmetic.test"))))

;;;; THE END ;;;;
