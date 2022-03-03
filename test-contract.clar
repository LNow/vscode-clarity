;; Types

;; Numbers
;; uint
u1
u2 u200 u123

;; int
u1
u2 u200 u123

;; Boolean
true true true
false false false

;; String - ASCII
"hello world"
"lorem ipsum"

;; String - UTF-8
u"hello world"
u"lorem ipsum"
u"A smiley face emoji \u{1F600} as a utf8 string"

;; Principal
;; Standard principal
'ST3CK642B6119EVC6CT550PW5EZZ1AJW6608HK60A

;; Contract principal
'ST3CK642B6119EVC6CT550PW5EZZ1AJW6608HK60A.citycoin-token

;; Sugared contract principal
.citycoin-token

;; Contract principal + trait
'ST3CK642B6119EVC6CT550PW5EZZ1AJW6608HK60A.citycoin-token.some-trait

;; Sugared contract principal + trait
.citycoin-token.some-trait


;; Buffer
0x
0x0102abdeef2301


;; List
(list u1 u2 u3)
(list 1 2 3)
(list "hello" "world")
(list 0x 0x00 0xab)
(list .contract1 .contract2)
(list none (some u1) (some u2) none)

;; Optional
none none
(some u1)
(some (some "hello"))
(some 0x)
(some u123123)

;; Response
(err u123)
(err "hello world")
(err (err (err "hello")))
(ok true)
(ok 123)
(ok {key: "value", key2: u123})

;; Keywords
block-height
burn-block-height
contract-caller
is-in-regtest
stx-liquid-supply
tx-sender


;; Functions
;; subtraction
(- 1 2 3)
(- u1 u2)
(- 
    1
    2
    3
    (get-some-value)
)

;; multiplication
(* 1 2)
(*   u1    u3)
(* (func1) (* u1 u2))

;; division
(/ 10 2)
(/ u123 (/ (func1 u123 u2) u2))

;; addition
(+ 1 2 3 4 5 6)
(+ u1
    u2
        u3
            (get-some-value) (map-get? MyMap u1)
)

;; < less than
(< u1 u2)
(< (func 123 true) (u2))

;; <= lest than or equal
(<= 1 2)
(<= u1 u213213)


;; > greater than
(> u1 u10)
(> 1 2)
(> (func1) (func2))

;; >= greater than or equal
(>= 123 123 123)
(>= u22 (function-name u1 u2 "abc"))


;; and
(and true true false (function true) (> 2 10))
(and
    true
    false
)

;; append
(append (list 123 123 123) 123)
(append (some-function) {key: u123})


;; as-contract
(as-contract (contract-call? .my-contract function-name true))


;; as-max-len?
(as-max-len? (list "a" "b" "c") u8)


;; asserts!
(asserts! true (err u123))


;; at-block
(at-block 0x0000000000000000000000000000000000000000000000000000000000000000 block-height)
(at-block (get-block-info? id-header-hash 0) (var-get data))


;; begin
(begin u1 u2 u3)
(begin
    (+ u1 u2)
    (- u2 u1)
    (ok true)
)

;; concat
(concat "a" "b")


;; contract-call?
(contract-call? .tokens mint! u19)


;; contract-of
(contract-of myVariable)


;; default-to
(default-to u0 (map-get? MyMap u1))


;; define-constant
(define-constant my-constant (+ u1 u2))
(define-constant ERR_NOT_AUTHORIZED (err u401))
(define-constant ONE u1)
(define-constant CONTRACT_OWNER tx-sender)


;; define-data-var
(define-data-var my-variable uint u0)
(define-data-var VariableName (string-ascii 112) "bla bla bla")


;; define-fungible-token
(define-fungible-token my-magic-ToKeN)
(define-fungible-token MyToken u123)


;; define-map
(define-map MyMap uint principal)
(define-map my-second-map
    {id: uint, value: uint}
    {who: principal, ustx: uint}
)


;; define-non-fungible-token
(define-non-fungible-token my-nft uint)
(define-non-fungible-token MyNFT
    {id: uint, owner: principal, desc: (string-utf8 10)}
)


;; define-private
(define-private (my-private-function) u1)
(define-private (other-function (arg1 uint) (arg2 uint) (arg3 (list 10 bool)))
    ;; some comment
    (+ arg1 arg2 u2)
)


;; define-public
(define-public (myPublic-function_name)

    (ok true)
)
(define-public (some-function
    (arg1 (list 10 uit))
    (arg2 {key: uint, value: (buff 40)})
)

    (ok true)
)


;; define-read-only
(define-read-only (my-read-only-magic-function-123-u123)
    u123
)
(define-read-only (function-function (arg1 bool) (arg2 principal) (arg3-name-with-dash (string-ascii 234)) 
    (trait-arg <my-trait>)
(last-arg (optional int)))
    (var-get myVariable)
)


;; define-trait
(define-trait my-TokenTrait123_12
    (
        (transfer? (principal principal uint) (response uint uint))
        (get-balance (principal) (response uint uint))
    )
)


;; element-at
(element-at "abcdef" u10)


;; err
(err u1)
(err true)
(err (my-sexy-function))


;; filter
(filter some-function (list u1 u2 u3 u4))


;; fold
(fold myFunction some-variable {key: "abc", id: u10})


;; ft-burn?
(ft-burn? my-fungible-token u10 contract-caller)


;; ft-get-balance
(ft-get-balance my-ft tx-sender)


;; ft-get-supply
(ft-get-supply my-super-nft)


;; ft-mint?
(ft-mint? tokenName u10 recipient)


;; ft-transfer?
(ft-transfer? citycoin-token amount tx-sender CONTRACT_ADDRESS)


;; get
(get my-key {my-key: u100, your-key: u200})


;; get-block-info?
(get-block-info? vrf-seed (- block-height u200))


;; hash160
(hash160 0x123123)
(hash160 u2323)


;; if
(if true false true)
(if (> u10 u4) (some-function) (+ (* u10 u2) input))


;; impl-trait
(impl-trait 'ST3CK642B6119EVC6CT550PW5EZZ1AJW6608HK60A.citycoin-token.some-trait)
(impl-trait .my-contract.trait-name)


;; index-of
(index-of "blockstack" "b")
(index-of (list u1 u2 u3 u4 u5 u6) (+ u1 u2))


;; is-eq
(is-eq true false)
(is-eq (function1 u123) totalSupply)


;; is-err
(is-err (err u123))
(is-err (contract-call? .my-fancy-contract super-duper-function {key: u123}))


;; is-none
(is-none (some (ok false)))
(is-none (private-function-name true false tx-sender contract-caller 0x123123))


;; is-ok
(is-ok (contract-call? .external-contract function tx-sender))


;; is-some
(is-some none)
(is-some (some false))


;; keccak256
(keccak256 u123123)


;; len
(len (list u1 u2 u3))
(len "hello world")
(len (function-name))


;; let
(let () (ok true))
(let 
    (
        (first-var u123)
        (second-var (+ 10 123))
        (third-var (unwrap! (do-something-awesome) ERR_SAD_PANDA))
    )
)


;; list
(list u1 u1 u2 u3)


;; log2
(log2 -123)
(log2
    u123123
)


;; map
(map my-function (list 1 2 3) (list true true false) (somePrivateFunction))


;; map-delete
(map-delete MapName map-key)


;; map-get?
(map-get? SuperMap {id: 10, who: tx-sender})



;; map-insert
(map-insert MapMap map mapMap)


;; map-set
(map-set Users tx-sender new-user-id)


;; match
(match some-value retOk retOk retErr (err u123))


;; merge
(merge {one: 1, two: 2} {six: 6, seven: 7})


;; mod
(mod 1023 2)


;; nft-burn?
(nft-burn? burn-nft u1 tx-sender)


;; nft-get-owner?
(nft-get-owner? OwnedNft "who-owns-you?")


;; nft-mint?
(nft-mint? MyNft 0x010203 contract-caller)


;; nft-transfer?
(nft-mint? bla-bla-bla "Roo" 'SZ2J6ZY48GV1EZ5V2V5RB9MP66SW86PYKKQ9H6DPR)


;; not
(not true)
(not false)
(not (my-function))
(not (>= 10 20))


;; ok
(ok true)
(ok false)
(ok (my-fancy-function-with arg1 arg2 true false (some u1)))


;; or
(or true false)
(or (> 10 4) (< 10 3))


;; pow
(pow 10 3)


;; principal-of?
(principal-of? 0x03040506070)


;; print
(print "money printer go brr")


;; secp256k1-recover?
(secp256k1-recover? 0xde5b9eb9e7c5592930eb2e30a01369c36586d872082ed8181ee83d2a0ec20f04
 0x8738487ebe69b93d8e51583be8eee50bb4213fc49c767d329632730cc193b873554428fc936ca3569afc15f1c9365f6591d6251a89fee9c9ac661116824d3a1301)


;; secp256k1-verify
(secp256k1-verify 0xde5b9eb9e7c5592930eb2e30a01369c36586d872082ed8181ee83d2a0ec20f04
 0x8738487ebe69b93d8e51583be8eee50bb4213fc49c767d329632730cc193b873554428fc936ca3569afc15f1c9365f6591d6251a89fee9c9ac661116824d3a1301
 0x03adb8de4bfb65db2cfd6120d55c6526ae9c52e675db7e47308636534ba7786110) ;; Returns true

(secp256k1-verify 0xde5b9eb9e7c5592930eb2e30a01369c36586d872082ed8181ee83d2a0ec20f04
 0x8738487ebe69b93d8e51583be8eee50bb4213fc49c767d329632730cc193b873554428fc936ca3569afc15f1c9365f6591d6251a89fee9c9ac661116824d3a13
 0x03adb8de4bfb65db2cfd6120d55c6526ae9c52e675db7e47308636534ba7786110) ;; Returns true

(secp256k1-verify 0x0000000000000000000000000000000000000000000000000000000000000000
 0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
 0x03adb8de4bfb65db2cfd6120d55c6526ae9c52e675db7e47308636534ba7786110) ;; Returns false


;; sha256
(sha256 123)


;; sha512
(sha512 321)


;; sha512/256
(sha512/256 1)


;; some
(some u123)


;; sqrti
(sqrti 213)


;; stx-burn?
(stx-burn? u1 contract-caller)


;; stx-get-balance
(stx-get-balance owner)


;; stx-transfer?
(stx-transfer? u232323 tx-sender CONTRACT_OWNER)


;; to-int
(to-int u123213)


;; to-uint
(to-uint 123123123)


;; try!
(try! (to-not-cry))


;; tuple
;; not supported - I'm to lazy to create 2 regex for the same thing


;; unwrap-err-panic
(unwrap-err-panic (contract-call? .contract function arg))


;; unwrap-err!
(unwrap-err! (err 1) false)


;; unwrap-panic
(unwrap-panic (map-insert MyMap duplicate-key some-value))


;; unwrap!
(unwrap! (map-get? MyMap key) ERR_VERY_SAD_PANDA)


;; use-trait
(use-trait my-trait-alias .contractName.trait-name)


;; var-get
(var-get myVariable)
(var-get variable)


;; var-set
(var-set myVariable u123)


;; xor
(xor u1 u2)

(define-trait some-trait-name (
    (first-function () (response uint uint))
    (second-function (
        uint
        ;; uint
        principal
        )
        ;; (response uint uint)
        (response bool uint)
    )
    (third-function () (response {
        a: uint,
        ;; b: uint,
        c: uint,
    } uint))
    ;; (forth-function () (response uint uint))
    (fifth-function () (response uint uint))
    (sixth-function () (response 
        bool 
        ;; uint
        uint
    ))
))

;; right color
(define-map hello uint {
  key: uint ;; wrong color
})