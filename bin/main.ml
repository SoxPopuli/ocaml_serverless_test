open Format

module Config = struct
  type t =
    { a : int
    ; b : string
    ; c : float
    }
  [@@deriving show]

  let make ?(a = 1) ?(b = "two") ?(c = 3.0) () = { a; b; c }
end

let () =
  let config = Config.make ~c:2.5 () in
  printf "%a" Config.pp config
;;
