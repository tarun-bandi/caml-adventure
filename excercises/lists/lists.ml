let rec tail list = match list with 
                         | [] -> None
                         | [x] -> Some x
                         | _::xs -> tail xs;;

let rec last_two = function 
    | [] -> None
    | [ _ ] -> None
    | [x ; y] -> Some (x, y)
    | _ :: zs -> last_two zs;;


let rec nth x y = match (x, y) with 
    (_, []) -> None
   |(n, _) when n < 0 -> None
   |(0, a :: _) -> Some a
   |(_, _ :: xs) -> nth (x - 1) xs


   let rec tail_rec_len list x = match list with 
   | [] -> x
   | _ :: xs -> tail_rec_len xs (x + 1)

   let list_len list = tail_rec_len list 0 

    let rev_list list = 
      let rec auxillary acc = function 
          | [] -> acc
          | x :: xs -> auxillary (x :: acc) xs
    in
      auxillary [] list 

    let is_palindrome list = 
      let rec is_equal list1 list2 = 
        match (list1, list2) with
        | ([], []) -> true
        | (_, []) -> false
        | ([], _) -> false
        | (x ::xs , y :: ys) -> x = y && is_equal xs ys
      in 
        is_equal list (rev_list list)