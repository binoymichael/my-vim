" Vim syntax file
" Language:     JavaScript
" Maintainer:   Yi Zhao (ZHAOYI) <zzlinux AT hotmail DOT com>
" Last Change By: Marc Harter
" Last Change:  February 18, 2011
" Version:      0.7.9
" Changes:      Updates JSDoc syntax
"
" TODO:
"  - Add the HTML syntax inside the JSDoc

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'javascript'
endif

"" Drop fold if it is set but VIM doesn't support it.
let b:javascript_fold='true'
if version < 600    " Don't support the old version
  unlet! b:javascript_fold
endif

"" dollar sign is permittd anywhere in an identifier
setlocal iskeyword+=$

syntax sync fromstart

"" EXT JS 4 expressions
syntax match javaScriptExtjsMethod      "\w\+\s*\:\s*function"
syntax match javaScriptSpecialFn        "console\.log\|Ext\.log"
syntax match javaScriptExtjsCore        "Ext\.\(BLANK_IMAGE_URL\|SSL_SECURE_URL\|USE_NATIVE_JSON\|chromeVersion\|enableFx\|enableGarbageCollector\|enableListenerCollection\|enableNestedListenerRemoval\|enumerables\|firefoxVersion\|ieVersion\|isChrome\|isFF3_0\|isFF3_5isFF3_6\|isFF4\|isFF5\|isGecko\|isGecko3\|isGecko4\|isGecko5\|isIE\|isIE6\|isIE7\|isIE8\|isIE9\|isLinux\|isMac\|isOpera\|isOpera10_5\|isReady\|isSafari\|isSafari2\|isSafari3\|isSafari4\|isSafari5\|isWebKit\|isWindows\|log\|operaVersion\|safariVersion\|scopeResetCSS\|useShims\|webKitVersion\|addBehaviors\|application\|apply\|applyIf\|bind\|callback\|clone\|copyTo\|create\|createByAlias\|decode\|defer\|define\|destroy\|destroyMembers\|each\|emptyFn\|encode\|exclude\|fly\|get\|getBody\|getClass\|getClassName\|getCmp\|getDoc\|getDom\|getHead\|getOrientation\|getScrollbarSize\|getStore\|htmlDecode\|htmlEncode\|id\|isArray\|isBoolean\|isDate\|isDefined\|isElement\|isEmpty\|isFunction\|isIterable\|isNumber\|isNumeric\|isObject\|isPrimitive\|isString\|isTextNode\|iterate\|merge\|namespace\|ns\|onDocumentReady\|onReady\|override\|pass\|preg\|query\|regStore\|removeNode\|require\|select\|syncRequire\|toArray\|typeOf\|urlAppend\|valueFrom\|widget\|\)"
syntax match javaScriptExtjsClass       "Ext\.\(AbstractComponent\|AbstractManager\|AbstractPlugin\|Action\|Ajax\|Array\|Base\|Class\|ClassManager\|Component\|ComponentLoader\|ComponentManager\|ComponentQuery\|CompositeElement\|CompositeElementLite\|DomHelper\|DomQuery\|Editor\|Element\|ElementLoader\|EventManager\|EventObject\|FocusManager\|Function\|Img\|is\|JSON\|Layer\|Loader\|LoadMask\|MessageBox\|ModelManager\|Number\|Object\|PluginManager\|ProgressBar\|Shadow\|String\|supports\|TaskManager\|Template\|Version\|WindowManager\|XTemplate\|ZIndexManager\|app.Application\|app.Controller\|button.Button\|button.Cycle\|button.Split\|chart.axis.Abstract\|chart.axis.Axis\|chart.axis.Category\|chart.axis.Gauge\|chart.axis.Numeric\|chart.axis.Time\|chart.series.Area\|chart.series.Bar\|chart.series.Cartesian\|chart.series.Column\|chart.series.Gauge\|chart.series.Line\|chart.series.Pie\|chart.series.Radar\|chart.series.Scatter\|chart.series.Series\|chart.theme.Theme\|chart.Callout\|chart.Chart\|chart.Highlight\|chart.Label\|chart.Legend\|chart.LegendItem\|chart.Mask\|chart.Navigation\|chart.Tip\|container.AbstractContainer\|container.ButtonGroup\|container.Container\|container.Viewport\|data.proxy.Ajax\|data.proxy.Client\|data.proxy.Direct\|data.proxy.JsonP\|data.proxy.LocalStorage\|data.proxy.Memory\|data.proxy.Proxy\|data.proxy.Rest\|data.proxy.Server\|data.proxy.SessionStorage\|data.proxy.WebStorage\|data.reader.Array\|data.reader.Json\|data.reader.Reader\|data.reader.Xml\|data.writer.Json\|data.writer.Writer\|data.writer.Xml\|data.AbstractStore\|data.ArrayStore\|data.Association\|data.Batch\|data.BelongsToAssociation\|data.Connection\|data.DirectStore\|data.Errors\|data.Field\|data.HasManyAssociation\|data.JsonP\|data.Model\|data.NodeInterface\|data.Operation\|data.Request\|data.ResultSet\|data.SortTypes\|data.Store\|data.StoreManager\|data.Tree\|data.TreeStore\|data.Types\|data.validations\|dd.DD\|dd.DDProxy\|dd.DDTarget\|dd.DragDrop\|dd.DragDropManager\|dd.DragSource\|dd.DragTracker\|dd.DragZone\|dd.DropTarget\|dd.DropZone\|dd.Registry\|dd.ScrollManager\|dd.StatusProxy\|direct.Event\|direct.ExceptionEvent\|direct.JsonProvider\|direct.Manager\|direct.PollingProvider\|direct.Provider\|direct.RemotingEvent\|direct.RemotingProvider\|direct.Transaction\|draw.engine.Svg\|draw.engine.Vml\|draw.Color\|draw.Component\|draw.CompositeSprite\|draw.Sprite\|draw.Surface\|env.Browser\|env.FeatureDetector\|env.OS\|flash.Component\|form.action.Action\|form.action.DirectLoad\|form.action.DirectSubmit\|form.action.Load\|form.action.StandardSubmit\|form.action.Submit\|form.field.Base\|form.field.Checkbox\|form.field.ComboBox\|form.field.Date\|form.field.Display\|form.field.Field\|form.field.File\|form.field.Hidden\|form.field.HtmlEditor\|form.field.Number\|form.field.Picker\|form.field.Radio\|form.field.Spinner\|form.field.Text\|form.field.TextArea\|form.field.Time\|form.field.Trigger\|form.field.VTypes\|form.Basic\|form.CheckboxGroup\|form.FieldAncestor\|form.FieldContainer\|form.FieldSet\|form.Label\|form.Labelable\|form.Panel\|form.RadioGroup\|fx.target.Component\|fx.target.CompositeElement\|fx.target.CompositeElementCSS\|fx.target.CompositeSprite\|fx.target.Element\|fx.target.ElementCSS\|fx.target.Sprite\|fx.target.Target\|fx.Anim\|fx.Animator\|fx.Easing\|grid.column.Action\|grid.column.Boolean\|grid.column.Column\|grid.column.Date\|grid.column.Number\|grid.column.Template\|grid.feature.AbstractSummary\|grid.feature.Chunking\|grid.feature.Feature\|grid.feature.Grouping\|grid.feature.GroupingSummary\|grid.feature.RowBody\|grid.feature.Summary\|grid.header.Container\|grid.plugin.CellEditing\|grid.plugin.DragDrop\|grid.plugin.Editing\|grid.plugin.HeaderResizer\|grid.plugin.RowEditing\|grid.property.Grid\|grid.property.HeaderContainer\|grid.property.Property\|grid.property.Store\|grid.PagingScroller\|grid.Panel\|grid.RowNumberer\|grid.Scroller\|grid.View\|layout.container.Absolute\|layout.container.AbstractCard\|layout.container.AbstractContainer\|layout.container.AbstractFit\|layout.container.Accordion\|layout.container.Anchor\|layout.container.Auto\|layout.container.Border\|layout.container.Box\|layout.container.Card\|layout.container.CheckboxGroup\|layout.container.Column\|layout.container.Container\|layout.container.Fit\|layout.container.HBox\|layout.container.Table\|layout.container.VBox\|layout.Layout\|menu.CheckItem\|menu.ColorPicker\|menu.DatePicker\|menu.Item\|menu.Manager\|menu.Menu\|menu.Separator\|panel.AbstractPanel\|panel.Header\|panel.Panel\|panel.Proxy\|panel.Table\|panel.Tool\|picker.Color\|picker.Date\|picker.Time\|resizer.Handle\|resizer.Resizer\|resizer.Splitter\|selection.CellModel\|selection.CheckboxModel\|selection.Model\|selection.RowModel\|slider.Multi\|slider.Single\|slider.Tip\|state.CookieProvider\|state.LocalStorageProvider\|state.Manager\|state.Provider\|state.Stateful\|tab.Bar\|tab.Panel\|tab.Tab\|tip.QuickTip\|tip.QuickTipManager\|tip.Tip\|tip.ToolTip\|toolbar.Fill\|toolbar.Item\|toolbar.Paging\|toolbar.Separator\|toolbar.Spacer\|toolbar.TextItem\|toolbar.Toolbar\|tree.plugin.TreeViewDragDrop\|tree.Panel\|tree.View\|util.AbstractMixedCollection\|util.Animate\|util.ClickRepeater\|util.ComponentDragger\|util.Cookies\|util.CSS\|util.DelayedTask\|util.Filter\|util.Floating\|util.Format\|util.Grouper\|util.HashMap\|util.History\|util.Inflector\|util.KeyMap\|util.KeyNav\|util.Memento\|util.MixedCollection\|util.Observable\|util.Point\|util.Region\|util.Sortable\|util.Sorter\|util.TaskRunner\|util.TextMetrics\|view.AbstractView\|view.BoundList\|view.BoundListKeyNav\|view.Table\|view.TableChunker\|view.View\|window.MessageBox\|window.Window\)"
syntax match javaScriptExtjsDateClass   "Ext\.Date\.\(DAY\|HOUR\|MILLI\|MINUTE\|MONTH\|SECOND\|YEAR\|dayNames\|defaultFormat\|defaults\|formatCodes\|formatFunctions\|monthNames\|monthNumbers\|parseFunctions\|useStrict\|add\|between\|clearTime\|clone\|format\|formatContainsDateInfo\|formatContainsHourInfo\|getDayOfYear\|getDaysInMonth\|getElapsed\|getFirstDateOfMonth\|getFirstDayOfMonth\|getGMTOffset\|getLastDateOfMonth\|getLastDayOfMonth\|getMonthNumber\|getShortDayName\|getShortMonthName\|getSuffix\|getTimezone\|getWeekOfYear\|isDST\|isLeapYear\|isValid\|now\|parse\|\)"
syntax match javaScriptExtjsMisc        "\.\(bind\|createInterceptor\|createSequence\|defer\|constrain\|capitalize\|ellipsis\|escape\|escapeRegex\|format\|htmlDecode\|htmlEncode\|leftPad\|repeat\|toggle\|trim\|urlAppend\|indexOf\|remove\|between\|clearTime\|clone\|format\|getDayOfYear\|getDaysInMonth\|getElapsed\|getFirstDateOfMonth\|getFirstDayOfMonth\|getGMTOffset\|getLastDateOfMonth\|getLastDayOfMonth\|getMonthNumber\|getShortDayName\|getShortMonthName\|getSuffix\|getTimezone\|getWeekOfYear\|isLeapYear\)"
syntax match   javaScriptSpecialCharacter  "'\\.'"

"" JavaScript comments
syntax match   javaScriptExtjsDoc       "@\(class\|link\|param\|return\|ignore\|hide\|private\|static\|singleton\|type\|property\|cfg\|extends\|event\)\|{\(Boolean\|String\|Number\|Object\|Array\|Function\|HTMLElement\|Mixed\|Date\)\(\/\(Boolean\|String\|Number\|Object\|Array\|Function\|HTMLElement\|Mixed\|Date\)\)*}\|#\w\+"
syntax keyword javaScriptCommentTodo    TODO FIXME XXX TBD contained
syntax region  javaScriptLineComment    start=+\/\/+ end=+$+ keepend contains=javaScriptCommentTodo,javaScriptExtjsDoc,javaScriptExtjsClass,@Spell
syntax region  javaScriptEnvComment     start="\%^#!" end="$" display
syntax region  javaScriptLineComment    start=+^\s*\/\/+ skip=+\n\s*\/\/+ end=+$+ keepend contains=javaScriptCommentTodo,@Spell fold
syntax region  javaScriptCvsTag         start="\$\cid:" end="\$" oneline contained
syntax region  javaScriptComment        start="/\*"  end="\*/" contains=javaScriptExtjsDoc,javaScriptExtjsClass,javaScriptCommentTodo,javaScriptCvsTag,@Spell fold

"" JSDoc / JSDoc Toolkit
if !exists("javascript_ignore_javaScriptdoc")
  syntax case ignore

  "" syntax coloring for javadoc comments (HTML)
  "syntax include @javaHtml <sfile>:p:h/html.vim
  "unlet b:current_syntax

  syntax region javaScriptDocComment      matchgroup=javaScriptComment start="/\*\*\s*"  end="\*/" contains=javaScriptDocTags,javaScriptCommentTodo,javaScriptCvsTag,@javaScriptHtml,@Spell fold

  " tags containing a param
  syntax match  javaScriptDocTags         contained "@\(augments\|base\|borrows\|class\|constructs\|default\|exception\|exports\|extends\|file\|member\|memberOf\|module\|name\|namespace\|optional\|requires\|title\|throws\|version\)\>" nextgroup=javaScriptDocParam skipwhite
  " tags containing type and param
  syntax match  javaScriptDocTags         contained "@\(argument\|param\|property\)\>" nextgroup=javaScriptDocType skipwhite
  " tags containing type but no param
  syntax match  javaScriptDocTags         contained "@\(type\|return\|returns\)\>" nextgroup=javaScriptDocTypeNoParam skipwhite
  " tags containing references
  syntax match  javaScriptDocTags         contained "@\(lends\|link\|see\)\>" nextgroup=javaScriptDocSeeTag skipwhite
  " other tags (no extra syntax)
  syntax match  javaScriptDocTags         contained "@\(access\|addon\|alias\|author\|beta\|constant\|constructor\|copyright\|deprecated\|description\|event\|example\|exec\|field\|fileOverview\|fileoverview\|function\|global\|ignore\|inner\|license\|overview\|private\|protected\|project\|public\|readonly\|since\|static\)\>"

  syntax region javaScriptDocType         start="{" end="}" oneline contained nextgroup=javaScriptDocParam skipwhite
  syntax match  javaScriptDocType         contained "\%(#\|\"\|\w\|\.\|:\|\/\)\+" nextgroup=javaScriptDocParam skipwhite
  syntax region javaScriptDocTypeNoParam  start="{" end="}" oneline contained
  syntax match  javaScriptDocTypeNoParam  contained "\%(#\|\"\|\w\|\.\|:\|\/\)\+"
  syntax match  javaScriptDocParam        contained "\%(#\|\"\|{\|}\|\w\|\.\|:\|\/\)\+"
  syntax region javaScriptDocSeeTag       contained matchgroup=javaScriptDocSeeTag start="{" end="}" contains=javaScriptDocTags

  syntax case match
endif   "" JSDoc end

syntax case match

"" Syntax in the JavaScript code
syntax match   javaScriptSpecial        "\\\d\d\d\|\\x\x\{2\}\|\\u\x\{4\}\|\\."
syntax region  javaScriptStringD        start=+"+  skip=+\\\\\|\\$"+  end=+"+  contains=javaScriptSpecial,@htmlPreproc
syntax region  javaScriptStringS        start=+'+  skip=+\\\\\|\\$'+  end=+'+  contains=javaScriptSpecial,@htmlPreproc
syntax region  javaScriptRegexpCharClass start=+\[+ end=+\]+ contained
syntax region  javaScriptRegexpString   start=+\(\(\(return\|case\)\s\+\)\@<=\|\(\([)\]"']\|\d\|\w\)\s*\)\@<!\)/\(\*\|/\)\@!+ skip=+\\\\\|\\/+ end=+/[gim]\{,3}+ contains=javaScriptSpecial,javaScriptRegexpCharClass,@htmlPreproc oneline
syntax match   javaScriptNumber         /\<-\=\d\+L\=\>\|\<0[xX]\x\+\>/
syntax match   javaScriptFloat          /\<-\=\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\=\>/
syntax match   javaScriptLabel          /\<\w\+\(\s*:\)\@=/

"" JavaScript Prototype
syntax keyword javaScriptPrototype      prototype

"" Program Keywords
syntax keyword javaScriptSource         import export
syntax keyword javaScriptType           const undefined var void yield 
syntax keyword javaScriptOperator       delete new in instanceof let typeof
syntax keyword javaScriptBoolean        true false
syntax keyword javaScriptNull           null
syntax keyword javaScriptThis           this

"" Statement Keywords
syntax keyword javaScriptConditional    if else
syntax keyword javaScriptRepeat         do while for
syntax keyword javaScriptBranch         break continue switch case default return
syntax keyword javaScriptStatement      try catch throw with finally

syntax keyword javaScriptGlobalObjects  Array Boolean Date Function Infinity JavaArray JavaClass JavaObject JavaPackage Math Number NaN Object Packages RegExp String Undefined java netscape sun

syntax keyword javaScriptExceptions     Error EvalError RangeError ReferenceError SyntaxError TypeError URIError

syntax keyword javaScriptFutureKeys     abstract enum int short boolean export interface static byte extends long super char final native synchronized class float package throws goto private transient debugger implements protected volatile double import public

"" DOM/HTML/CSS specified things

  " DOM2 Objects
  syntax keyword javaScriptGlobalObjects  DOMImplementation DocumentFragment Document Node NodeList NamedNodeMap CharacterData Attr Element Text Comment CDATASection DocumentType Notation Entity EntityReference ProcessingInstruction
  syntax keyword javaScriptExceptions     DOMException

  " DOM2 CONSTANT
  syntax keyword javaScriptDomErrNo       INDEX_SIZE_ERR DOMSTRING_SIZE_ERR HIERARCHY_REQUEST_ERR WRONG_DOCUMENT_ERR INVALID_CHARACTER_ERR NO_DATA_ALLOWED_ERR NO_MODIFICATION_ALLOWED_ERR NOT_FOUND_ERR NOT_SUPPORTED_ERR INUSE_ATTRIBUTE_ERR INVALID_STATE_ERR SYNTAX_ERR INVALID_MODIFICATION_ERR NAMESPACE_ERR INVALID_ACCESS_ERR
  syntax keyword javaScriptDomNodeConsts  ELEMENT_NODE ATTRIBUTE_NODE TEXT_NODE CDATA_SECTION_NODE ENTITY_REFERENCE_NODE ENTITY_NODE PROCESSING_INSTRUCTION_NODE COMMENT_NODE DOCUMENT_NODE DOCUMENT_TYPE_NODE DOCUMENT_FRAGMENT_NODE NOTATION_NODE

  " HTML events and internal variables
  syntax case ignore
  syntax keyword javaScriptHtmlEvents     onblur onclick oncontextmenu ondblclick onfocus onkeydown onkeypress onkeyup onmousedown onmousemove onmouseout onmouseover onmouseup onresize
  syntax case match

" Follow stuff should be highligh within a special context
" While it can't be handled with context depended with Regex based highlight
" So, turn it off by default
if exists("javascript_enable_domhtmlcss")

    " DOM2 things
    syntax match javaScriptDomElemAttrs     contained /\%(nodeName\|nodeValue\|nodeType\|parentNode\|childNodes\|firstChild\|lastChild\|previousSibling\|nextSibling\|attributes\|ownerDocument\|namespaceURI\|prefix\|localName\|tagName\)\>/
    syntax match javaScriptDomElemFuncs     contained /\%(insertBefore\|replaceChild\|removeChild\|appendChild\|hasChildNodes\|cloneNode\|normalize\|isSupported\|hasAttributes\|getAttribute\|setAttribute\|removeAttribute\|getAttributeNode\|setAttributeNode\|removeAttributeNode\|getElementsByTagName\|getAttributeNS\|setAttributeNS\|removeAttributeNS\|getAttributeNodeNS\|setAttributeNodeNS\|getElementsByTagNameNS\|hasAttribute\|hasAttributeNS\)\>/ nextgroup=javaScriptParen skipwhite
    " HTML things
    syntax match javaScriptHtmlElemAttrs    contained /\%(className\|clientHeight\|clientLeft\|clientTop\|clientWidth\|dir\|id\|innerHTML\|lang\|length\|offsetHeight\|offsetLeft\|offsetParent\|offsetTop\|offsetWidth\|scrollHeight\|scrollLeft\|scrollTop\|scrollWidth\|style\|tabIndex\|title\)\>/
    syntax match javaScriptHtmlElemFuncs    contained /\%(blur\|click\|focus\|scrollIntoView\|addEventListener\|dispatchEvent\|removeEventListener\|item\)\>/ nextgroup=javaScriptParen skipwhite

    " CSS Styles in JavaScript
    syntax keyword javaScriptCssStyles      contained color font fontFamily fontSize fontSizeAdjust fontStretch fontStyle fontVariant fontWeight letterSpacing lineBreak lineHeight quotes rubyAlign rubyOverhang rubyPosition
    syntax keyword javaScriptCssStyles      contained textAlign textAlignLast textAutospace textDecoration textIndent textJustify textJustifyTrim textKashidaSpace textOverflowW6 textShadow textTransform textUnderlinePosition
    syntax keyword javaScriptCssStyles      contained unicodeBidi whiteSpace wordBreak wordSpacing wordWrap writingMode
    syntax keyword javaScriptCssStyles      contained bottom height left position right top width zIndex
    syntax keyword javaScriptCssStyles      contained border borderBottom borderLeft borderRight borderTop borderBottomColor borderLeftColor borderTopColor borderBottomStyle borderLeftStyle borderRightStyle borderTopStyle borderBottomWidth borderLeftWidth borderRightWidth borderTopWidth borderColor borderStyle borderWidth borderCollapse borderSpacing captionSide emptyCells tableLayout
    syntax keyword javaScriptCssStyles      contained margin marginBottom marginLeft marginRight marginTop outline outlineColor outlineStyle outlineWidth padding paddingBottom paddingLeft paddingRight paddingTop
    syntax keyword javaScriptCssStyles      contained listStyle listStyleImage listStylePosition listStyleType
    syntax keyword javaScriptCssStyles      contained background backgroundAttachment backgroundColor backgroundImage gackgroundPosition backgroundPositionX backgroundPositionY backgroundRepeat
    syntax keyword javaScriptCssStyles      contained clear clip clipBottom clipLeft clipRight clipTop content counterIncrement counterReset cssFloat cursor direction display filter layoutGrid layoutGridChar layoutGridLine layoutGridMode layoutGridType
    syntax keyword javaScriptCssStyles      contained marks maxHeight maxWidth minHeight minWidth opacity MozOpacity overflow overflowX overflowY verticalAlign visibility zoom cssText
    syntax keyword javaScriptCssStyles      contained scrollbar3dLightColor scrollbarArrowColor scrollbarBaseColor scrollbarDarkShadowColor scrollbarFaceColor scrollbarHighlightColor scrollbarShadowColor scrollbarTrackColor

    " Highlight ways
    syntax match javaScriptDotNotation      "\." nextgroup=javaScriptPrototype,javaScriptDomElemAttrs,javaScriptDomElemFuncs,javaScriptHtmlElemAttrs,javaScriptHtmlElemFuncs
    syntax match javaScriptDotNotation      "\.style\." nextgroup=javaScriptCssStyles

endif "DOM/HTML/CSS

"" end DOM/HTML/CSS specified things


"" Code blocks
" there is a name collision with javaScriptExpression in html.vim, hence the use of the '2' here
syntax cluster javaScriptExpression2 contains=javaScriptComment,javaScriptLineComment,javaScriptDocComment,javaScriptStringD,javaScriptStringS,javaScriptRegexpString,javaScriptNumber,javaScriptFloat,javaScriptSource,javaScriptThis,javaScriptType,javaScriptOperator,javaScriptBoolean,javaScriptNull,javaScriptFunction,javaScriptGlobalObjects,javaScriptExceptions,javaScriptFutureKeys,javaScriptDomErrNo,javaScriptDomNodeConsts,javaScriptHtmlEvents,javaScriptDotNotation,javaScriptBracket,javaScriptParen,javaScriptBlock,javaScriptParenError
syntax cluster javaScriptAll       contains=@javaScriptExpression2,javaScriptLabel,javaScriptConditional,javaScriptRepeat,javaScriptBranch,javaScriptStatement,javaScriptTernaryIf
syntax cluster javaScriptExtJs4    contains=javaScriptSpecialCharacter,javaScriptExtjsMisc,javaScriptExtjsClass,javaScriptExtjsDateClass,javaScriptExtjsCore,javaScriptSpecialFn,javaScriptExtjsMethod,javaScriptExtjsDoc
syntax region  javaScriptBracket   matchgroup=javaScriptBracket transparent start="\[" end="\]" contains=@javaScriptAll,javaScriptParensErrB,javaScriptParensErrC,javaScriptBracket,javaScriptParen,javaScriptBlock,@htmlPreproc
syntax region  javaScriptParen     matchgroup=javaScriptParen   transparent start="("  end=")"  contains=@javaScriptExtJs4,@javaScriptAll,javaScriptParensErrA,javaScriptParensErrC,javaScriptParen,javaScriptBracket,javaScriptBlock,@htmlPreproc
syntax region  javaScriptBlock     matchgroup=javaScriptBlock   transparent start="{"  end="}"  contains=@javaScriptAll,javaScriptParensErrA,javaScriptParensErrB,javaScriptParen,javaScriptBracket,javaScriptBlock,@htmlPreproc 
syntax region  javaScriptTernaryIf matchgroup=javaScriptTernaryIfOperator start=+?+  end=+:+  contains=@javaScriptExpression2

"" catch errors caused by wrong parenthesis
syntax match   javaScriptParensError    ")\|}\|\]"
syntax match   javaScriptParensErrA     contained "\]"
syntax match   javaScriptParensErrB     contained ")"
syntax match   javaScriptParensErrC     contained "}"

"" syntax clear
if main_syntax == "javascript"
  syntax sync clear
  syntax sync ccomment javaScriptComment minlines=200
  syntax sync match javaScriptHighlight grouphere javaScriptBlock /{/
endif

"" Fold control
if exists("b:javascript_fold")
    syntax match   javaScriptFunction       /\<function\>/ nextgroup=javaScriptFuncName skipwhite
    syntax match   javaScriptOpAssign       /=\@<!=/ nextgroup=javaScriptFuncBlock skipwhite skipempty
    syntax region  javaScriptFuncName       contained matchgroup=javaScriptFuncName start=/\%(\$\|\w\)*\s*(/ end=/)/ contains=javaScriptLineComment,javaScriptComment nextgroup=javaScriptFuncBlock skipwhite skipempty
    syntax region  javaScriptFuncBlock      contained matchgroup=javaScriptFuncBlock start="{" end="}" contains=@javaScriptAll,javaScriptParensErrA,javaScriptParensErrB,javaScriptParen,javaScriptBracket,javaScriptBlock fold
else
    syntax keyword javaScriptFunction       function
endif

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_javascript_syn_inits")
  if version < 508
    let did_javascript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink javaScriptComment              Comment
  HiLink javaScriptLineComment          Comment
  HiLink javaScriptEnvComment           PreProc
  HiLink javaScriptDocComment           Comment
  HiLink javaScriptCommentTodo          Todo
  HiLink javaScriptCvsTag               Function
  HiLink javaScriptDocTags              Special
  HiLink javaScriptDocSeeTag            Function
  HiLink javaScriptDocType              Type
  HiLink javaScriptDocTypeNoParam       Type
  HiLink javaScriptDocParam             Label
  HiLink javaScriptStringS              String
  HiLink javaScriptStringD              String
  HiLink javaScriptTernaryIfOperator    Conditional
  HiLink javaScriptRegexpString         String
  HiLink javaScriptRegexpCharClass      Character
  HiLink javaScriptCharacter            Character
  HiLink javaScriptPrototype            Type
  HiLink javaScriptConditional          Conditional
  HiLink javaScriptBranch               Conditional
  HiLink javaScriptRepeat               Repeat
  HiLink javaScriptStatement            Statement
  HiLink javaScriptFunction             Function
  HiLink javaScriptError                Error
  HiLink javaScriptParensError          Error
  HiLink javaScriptParensErrA           Error
  HiLink javaScriptParensErrB           Error
  HiLink javaScriptParensErrC           Error
  HiLink javaScriptOperator             Operator
  HiLink javaScriptType                 Type
  HiLink javaScriptThis                 Type
  HiLink javaScriptNull                 Type
  HiLink javaScriptNumber               Number
  HiLink javaScriptFloat                Number
  HiLink javaScriptBoolean              Boolean
  HiLink javaScriptLabel                Label
  HiLink javaScriptSpecial              Special
  HiLink javaScriptSource               Special
  HiLink javaScriptGlobalObjects        Special
  HiLink javaScriptExceptions           Special

  HiLink javaScriptDomErrNo             Constant
  HiLink javaScriptDomNodeConsts        Constant
  HiLink javaScriptDomElemAttrs         Label
  HiLink javaScriptDomElemFuncs         PreProc

  HiLink javaScriptHtmlEvents           Special
  HiLink javaScriptHtmlElemAttrs        Label
  HiLink javaScriptHtmlElemFuncs        PreProc

  HiLink javaScriptCssStyles            Label

  delcommand HiLink
endif

" Define the htmlJavaScript for HTML syntax html.vim
"syntax clear htmlJavaScript
"syntax clear javaScriptExpression
syntax cluster  htmlJavaScript contains=@javaScriptAll,javaScriptBracket,javaScriptParen,javaScriptBlock,javaScriptParenError
syntax cluster  javaScriptExpression contains=@javaScriptAll,javaScriptBracket,javaScriptParen,javaScriptBlock,javaScriptParenError,@htmlPreproc

let b:current_syntax = "javascript"
if main_syntax == 'javascript'
  unlet main_syntax
endif

" vim: ts=4
