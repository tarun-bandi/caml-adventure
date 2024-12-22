let rec f x = match x with 
              | 0 -> 0
              | _ -> f x - 1

let _ = 3 |> f |> print_int