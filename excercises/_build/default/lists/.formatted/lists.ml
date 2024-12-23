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