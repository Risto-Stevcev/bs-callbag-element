# bs-callbag-element

[![Latest release](https://img.shields.io/npm/v/@ristostevcev/bs-callbag-element.svg?style=flat)](https://www.npmjs.com/package/@ristostevcev/bs-callbag-element)
[![License](https://img.shields.io/npm/l/@ristostevcev/bs-callbag-element.svg?style=flat)](https://github.com/Risto-Stevcev/bs-callbag-element/blob/master/LICENSE)

Callbag elements for declaredom

## Install

```sh
npm i --save @ristostevcev/bs-callbag-element
```

## Usage

Callbag elements provide a way to create dynamically updated elements using 
callbags. This approach is declarative - it uses callbag streams and morphdom's
virtual dom for fast and efficient updating.

The following example creates a clock by mapping a 1-second callbag interval to 
the current date:

```ocaml
let clock =
  let open CallbagBasics in
  interval 1000
  |> map (fun _ -> span [|text @@ Js.Date.toString (Js.Date.make ())|])
  |> CallbagElement.make
```

The advantage of this approach for frontend web app development is simplicity 
and interop since callbag elements are just plain DOM elements. And it gives 
devs the ability to further optimize by batching updates with 
`requestAnimationFrame` to avoid unnecessary repaints.

This element is a web component so make sure to include a webcomponents 
polyfill.


## Example

See `example.html`


## License

See LICENSE
