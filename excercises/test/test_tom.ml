(* test_tom.ml *)
open OUnit2
open Lists 

let test_bob _ = 
  assert_equal (list_len [1;2;2;3;4;5]) (6);
  assert_equal (list_len []) (0)

let suite = 
  "Bob" >::: [
    "test bobby" >:: test_bob
  ]

let () = 
  run_test_tt_main suite