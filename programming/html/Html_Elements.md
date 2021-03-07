# HTML Elements

## Attributes
Provide additional information for elements.
Are defined as part of the start tag, and have a name and a value.
Not all attributes are applied with a value, just adding them to an element tells the browser that you want a certain kind of behavior.

```html
  <link href="filePath" rel="stylesheet" />
  <input required />
```

## Meta tag
Meta element describes a characteristics of a web page.
It is not used as a pair of opening and closing tags( stand-alone self-contained tag (void element))


<meta name="" content="" />

name:
<meta name="description" content"" /> description (max 155 characters describing search engine what the page is about)
<meta name="keywords" content" /> keywords (comma separated words that user might search)
<meta name="robots" content="nofollow" /> robots (indicates whether search engine should index page) (noindex : not to index) (nofollow: add page but not links)
<meta http-equiv="author" content="John" /> author
<meta http-equiv="pragma" content="no-cache" /> Prevents browser from caching the page.
<meta http-equiv="expires" content="Fri, 04 Apr 2014 23:59:59 GMT" />


## Heading element
- h1 to h6
- rendered as a block of text
- Text is displayed with bold font weight

## Paragraph element
- groups text together
- rendered as block display

## Line Break
<br>
(void or self-closing elements: elements that are not permitted to contain content, e.g. <input />)


## Horizontal Rule
<hr>


## White Space == Negative Space = Extra Blank Space

## Blockquote
display a block of quoted text indented from both left an dright margins.
<blockquote>text..</blockquote>


## [Phrase_element](./Phrase_element.md)
## [lists](./lists.md)
## [Special_Entity_Characters](./Special_Entity_Characters.md)
## [HTML_Syntax_Validation](./HTML_Syntax_Validation.md)


## Structural Elements
- div: configures division on a web page as a block display with empty space above and below.
- header: contains headings of a web page or an area within the document. (block display)
- nav: contains navigation links. (block display)
- main: contains main content
- footer: contains footer content.
- section: indicates section of a documents (block display). Can contain header, footer, section, article, aside, figure, div, other elements.
- article: intended to present an independent entry, such as a blog posting, comment. (block display)
- aside: indicates a sidebar or other tangential content. (block display)


## Time element
- identifies the date of content
- datetime attribute can be used to specify a calendar date and /or time in machine readable format.
- Date format: YYYY-MM-DD
- Time format: HH:MM
<article>
  <header><h3>Title</h3></article>
  <time datetime="2020-07-28">July 28, 2020</time>
  <p>....</p>
</article>

## Anchor Element
- specifies a hyperlink
<a href="url">Text</a>

- target attribute
 - target="_blank" : opens url in new tab/window
- Email hyper links: <a href="mailto:user@domain.com">Send Mail</a>

## Meta tag
Meta element describes a characteristics of a web page.
It is not used as a pair of opening and closing tags( stand-alone self-contained tag (void element))


## Heading element
- h1 to h6
- rendered as a block of text
- Text is displayed with bold font weight

## Paragraph element
- groups text together
- rendered as block display

## Line Break
<br>
(void element)


## Horizontal Rule
<hr>


## White Space == Negative Space = Extra Blank Space

## Blockquote
display a block of quoted text indented from both left an dright margins.
<blockquote>text..</blockquote>


## [Phrase_element](./Phrase_element.md)
## [lists](./lists.md)
## [Special_Entity_Characters](./Special_Entity_Characters.md)
## [HTML_Syntax_Validation](./HTML_Syntax_Validation.md)


## Structural Elements
- div: configures division on a web page as a block display with empty space above and below.
- header: contains headings of a web page or an area within the document. (block display)
- nav: contains navigation links. (block display)
- main: contains main content
- footer: contains footer content.
- section: indicates section of a documents (block display). Can contain header, footer, section, article, aside, figure, div, other elements.
- article: intended to present an independent entry, such as a blog posting, comment. (block display)
- aside: indicates a sidebar or other tangential content. (block display)


## Time element
- identifies the date of content
- datetime attribute can be used to specify a calendar date and /or time in machine readable format.
- Date format: YYYY-MM-DD
- Time format: HH:MM
<article>
  <header><h3>Title</h3></article>
  <time datetime="2020-07-28">July 28, 2020</time>
  <p>....</p>
</article>

## Anchor Element
- specifies a hyperlink
<a href="url">Text</a>

- target attribute
 - target="_blank" : opens url in new tab/window
- Email hyper links: <a href="mailto:user@domain.com">Send Mail</a>


## Images
<img src="files" alt="description" title="tooltip">
(void element)

Images that tie in with your page text:
<figure>
    <img src="file" alt="description" title="tooltip">
    <figcaption>Caption text</figcaption>
</figure>


## <div>
Division: For text that requires a container but for which none of the semantic elements is appropriate.
Browser applies no inherent formatting to the text.
</div>



## <q cite="url">short-quotation</q>
- text surrounded by double quotation marks
