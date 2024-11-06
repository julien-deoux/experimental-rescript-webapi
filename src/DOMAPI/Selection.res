@@warning("-44")
@@warning("-33")
open DOMAPI

module Selection = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/getRangeAt)
    */
  @send
  external getRangeAt: (selection, int) => range = "getRangeAt"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/addRange)
    */
  @send
  external addRange: (selection, range) => unit = "addRange"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeRange)
    */
  @send
  external removeRange: (selection, range) => unit = "removeRange"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeAllRanges)
    */
  @send
  external removeAllRanges: selection => unit = "removeAllRanges"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeAllRanges)
    */
  @send
  external empty: selection => unit = "empty"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapse)
    */
  @send
  external collapse: (selection, node, int) => unit = "collapse"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapse)
    */
  @send
  external setPosition: (selection, node, int) => unit = "setPosition"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapseToStart)
    */
  @send
  external collapseToStart: selection => unit = "collapseToStart"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapseToEnd)
    */
  @send
  external collapseToEnd: selection => unit = "collapseToEnd"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/extend)
    */
  @send
  external extend: (selection, node, int) => unit = "extend"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/setBaseAndExtent)
    */
  @send
  external setBaseAndExtent: (selection, node, int, node, int) => unit = "setBaseAndExtent"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/selectAllChildren)
    */
  @send
  external selectAllChildren: (selection, node) => unit = "selectAllChildren"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/modify)
    */
  @send
  external modify: (selection, string, string, string) => unit = "modify"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/deleteFromDocument)
    */
  @send
  external deleteFromDocument: selection => unit = "deleteFromDocument"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/containsNode)
    */
  @send
  external containsNode: (selection, node, bool) => bool = "containsNode"
}
