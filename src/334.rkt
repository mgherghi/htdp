;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 334ex) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Exercise 334
;; ------------
;; Show how to equip a directory with two more attributes: size and readability.
;; The former measures how much space the directory itself (as opposed to its
;; content) consumes; the latter specifies whether anyone else besides the user
;; may browse the content of the directory.
;; -----------------------------------------------------------------------------


; by adding the extra attributes to the dir struct:

(define-struct dir [name content size readability])
; A Dir.v2 is a structure: 
;   (make-dir String LOFD)
; `name` is the name of the directory
; `content` is a list of either the files or the dirs in this directory
; `size` is the space (in bytes) of the directory
; `readability` tells whether anyone else besides the user
; may browse the content of the directory
 
; An LOFD (short for list of files and directories) is one of:
; – '()
; – (cons File.v2 LOFD)
; – (cons Dir.v2 LOFD)
 
; A File.v2 is a String.



