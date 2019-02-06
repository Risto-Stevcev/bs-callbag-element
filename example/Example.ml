open Html

let body =
  let open Webapi.Dom in
  document
  |> Document.asHtmlDocument
  |> Js.Option.andThen (fun [@bs] e -> HtmlDocument.body e)
  |> Js.Option.getExn

(* Create a clock from the custom callbag element *)
let clock =
  let open CallbagBasics in
  interval 1000
  |> map (fun _ -> span [|text @@ Js.Date.toString (Js.Date.make ())|])
  |> CallbagElement.make

let _ =
  div [|
    span [|text "The time is:"|];
    br ();
    clock
  |]
  |> Html.Node.to_node
  |. Webapi.Dom.Element.appendChild body
