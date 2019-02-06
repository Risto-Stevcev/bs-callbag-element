(** A wrapper for callbag-element *)

type +'a t = 'a Html.Node.t
  constraint 'a = [> [> `callbag ] Html.Node.custom ]
val make :
  ?aria:[< Html.Attributes.Aria.roletype] Html.Attributes.Aria.t ->
  ?accesskey:string ->
  ?autocapitalize:Html.Attributes.Global.Value.autocapitalize ->
  ?class_name:string ->
  ?class_set:bool Js.Dict.t ->
  ?contenteditable:unit ->
  ?dataset:string Js.Dict.t ->
  ?dir:Html.Attributes.Global.Value.dir ->
  ?draggable:unit ->
  ?enterkeyhint:Html.Attributes.Global.Value.enterkeyhint ->
  ?hidden:unit ->
  ?id:string ->
  ?inputmode:Html.Attributes.Global.Value.inputmode ->
  ?is:string ->
  ?itemid:string ->
  ?itemprop:string ->
  ?itemref:string ->
  ?itemscope:unit ->
  ?itemtype:string ->
  ?lang:string ->
  ?nonce:string ->
  ?spellcheck:string ->
  ?tabindex:int ->
  ?title:string ->
  ?translate:Html.Attributes.Global.Value.translate ->
  ?on_auxclick:(Dom.mouseEvent -> unit) ->
  ?on_blur:(Dom.focusEvent -> unit) ->
  ?on_click:(Dom.mouseEvent -> unit) ->
  ?on_copy:(Dom.clipboardEvent -> unit) ->
  ?on_cut:(Dom.clipboardEvent -> unit) ->
  ?on_dblclick:(Dom.mouseEvent -> unit) ->
  ?on_drag:(Dom.dragEvent -> unit) ->
  ?on_dragend:(Dom.dragEvent -> unit) ->
  ?on_dragenter:(Dom.dragEvent -> unit) ->
  ?on_dragexit:(Dom.dragEvent -> unit) ->
  ?on_dragleave:(Dom.dragEvent -> unit) ->
  ?on_dragover:(Dom.dragEvent -> unit) ->
  ?on_dragstart:(Dom.dragEvent -> unit) ->
  ?on_drop:(Dom.dragEvent -> unit) ->
  ?on_focus:(Dom.focusEvent -> unit) ->
  ?on_input:(Dom.inputEvent -> unit) ->
  ?on_keydown:(Dom.keyboardEvent -> unit) ->
  ?on_keypress:(Dom.keyboardEvent -> unit) ->
  ?on_keyup:(Dom.keyboardEvent -> unit) ->
  ?on_mousedown:(Dom.mouseEvent -> unit) ->
  ?on_mouseenter:(Dom.mouseEvent -> unit) ->
  ?on_mouseleave:(Dom.mouseEvent -> unit) ->
  ?on_mousemove:(Dom.mouseEvent -> unit) ->
  ?on_mouseout:(Dom.mouseEvent -> unit) ->
  ?on_mouseover:(Dom.mouseEvent -> unit) ->
  ?on_mouseup:(Dom.mouseEvent -> unit) ->
  ?on_wheel:(Dom.wheelEvent -> unit) ->
  ?on_paste:(Dom.clipboardEvent -> unit) ->
  ?on_scroll:(Dom.uiEvent -> unit) ->
  [< _ Html.Node.content ] Html.Node.t Callbag.t ->
  [> [> `callbag ] Html.Node.custom ] t
val jsx :
  ?aria:[< Html.Attributes.Aria.roletype] Html.Attributes.Aria.t ->
  ?accesskey:string ->
  ?autocapitalize:Html.Attributes.Global.Value.autocapitalize ->
  ?class_name:string ->
  ?class_set:bool Js.Dict.t ->
  ?contenteditable:unit ->
  ?dataset:string Js.Dict.t ->
  ?dir:Html.Attributes.Global.Value.dir ->
  ?draggable:unit ->
  ?enterkeyhint:Html.Attributes.Global.Value.enterkeyhint ->
  ?hidden:unit ->
  ?id:string ->
  ?inputmode:Html.Attributes.Global.Value.inputmode ->
  ?is:string ->
  ?itemid:string ->
  ?itemprop:string ->
  ?itemref:string ->
  ?itemscope:unit ->
  ?itemtype:string ->
  ?lang:string ->
  ?nonce:string ->
  ?spellcheck:string ->
  ?tabindex:int ->
  ?title:string ->
  ?translate:Html.Attributes.Global.Value.translate ->
  ?on_auxclick:(Dom.mouseEvent -> unit) ->
  ?on_blur:(Dom.focusEvent -> unit) ->
  ?on_click:(Dom.mouseEvent -> unit) ->
  ?on_copy:(Dom.clipboardEvent -> unit) ->
  ?on_cut:(Dom.clipboardEvent -> unit) ->
  ?on_dblclick:(Dom.mouseEvent -> unit) ->
  ?on_drag:(Dom.dragEvent -> unit) ->
  ?on_dragend:(Dom.dragEvent -> unit) ->
  ?on_dragenter:(Dom.dragEvent -> unit) ->
  ?on_dragexit:(Dom.dragEvent -> unit) ->
  ?on_dragleave:(Dom.dragEvent -> unit) ->
  ?on_dragover:(Dom.dragEvent -> unit) ->
  ?on_dragstart:(Dom.dragEvent -> unit) ->
  ?on_drop:(Dom.dragEvent -> unit) ->
  ?on_focus:(Dom.focusEvent -> unit) ->
  ?on_input:(Dom.inputEvent -> unit) ->
  ?on_keydown:(Dom.keyboardEvent -> unit) ->
  ?on_keypress:(Dom.keyboardEvent -> unit) ->
  ?on_keyup:(Dom.keyboardEvent -> unit) ->
  ?on_mousedown:(Dom.mouseEvent -> unit) ->
  ?on_mouseenter:(Dom.mouseEvent -> unit) ->
  ?on_mouseleave:(Dom.mouseEvent -> unit) ->
  ?on_mousemove:(Dom.mouseEvent -> unit) ->
  ?on_mouseout:(Dom.mouseEvent -> unit) ->
  ?on_mouseover:(Dom.mouseEvent -> unit) ->
  ?on_mouseup:(Dom.mouseEvent -> unit) ->
  ?on_wheel:(Dom.wheelEvent -> unit) ->
  ?on_paste:(Dom.clipboardEvent -> unit) ->
  ?on_scroll:(Dom.uiEvent -> unit) ->
  ?callbag:[< _ Html.Node.content ] Html.Node.t Callbag.t ->
  unit -> [> [> `callbag ] Html.Node.custom ] t
