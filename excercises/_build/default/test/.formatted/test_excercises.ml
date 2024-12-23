(* test_excercises.ml *)
open OUnit2
open Lists 

let test_empty_tail _ =
  assert_equal (tail []) None

let test_normal_tail _ = 
  assert_equal (tail [1; 3]) (Some 3);
  assert_equal (tail [1; 2; 3]) (Some 3)

let test_poly_tail _ = 
  assert_equal (tail ["a"; "b"; "c"]) (Some "c")


let test_nth_normal _= 
  assert_equal (nth 2 [0;1;2;3]) (Some 2);
  assert_equal (nth 0 [0;1;2;3]) (Some 0)
 
let test_nth_irregular _ = 
  assert_equal (nth 5 [0;1;2;3] ) (None);
  assert_equal (nth (-1) []) (None)


let suite =
  "Test Tail Function" >::: [
    "test_normal_tail" >:: test_normal_tail;
    "test_empty_tail" >:: test_empty_tail;
    "test_poly_tail" >:: test_poly_tail;
    "test_nth_normal" >:: test_nth_normal;
    "test_nth_irregular" >:: test_nth_irregular
        ]


let () =
  run_test_tt_main suite