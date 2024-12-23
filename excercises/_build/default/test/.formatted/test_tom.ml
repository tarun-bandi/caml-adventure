(* test_tom.ml *)
open OUnit2

let test_bob _ = 
  assert_equal () ()

let suite = 
  "Bob" >::: [
    "test bobby" >:: test_bob
  ]

let () = 
  run_test_tt_main suite