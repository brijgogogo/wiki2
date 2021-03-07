# return types
 Web API controller action return types:
## Specific type
string, custom object, IEnumerable<T>
when one of multiple different types could be returned, we use ActionResult


## IActionResult
ActionResult types represents various HTTP status codes.

[HttpGet("{id}")]
[ProducesResponseType(typeof(Product), StatusCodes.Status200OK)]
[ProducesResponseType(StatusCodes.Status404NotFound)]
pubic IActionResult GetById(int id)
{
  var product = GetProduct(id);

  if(product == null)
    return NotFound(); // returns new NotFoundResult()

  return Ok(product); // returns new OkObjectResult(product)
}

[HttpPost]
[ProducesResponseType(typeof(Product), StatusCodes.Status201Created)]
[ProducesResponseType(StatusCodes.Status400BadRequest)]
pubic async Task<IActionResult> CreateAsync([FromBody] Product product)
{
  if(product.Description.Contains("abc"))
    return BadRequest();

  await AddProduct(product);

  return CreatedAtAction(nameof(GetById), , new { id = product.Id }, product);
}


## ActionResult<T>
return a type deriving from ActionResult or specific type
benefits over IActionResult
  - replece [ProducesResponseType(200, Type = typeof(Product))] with [ProducesResponseType(200)], as type is inferred from T in ActionResult<T>
  - implicit conversion of both T and ActionResult to ActionResult<T>.


[HttpGet("{id}")]
[ProducesResponseType(StatusCodes.Status404NotFound)]
pubic ActionResult<Product> GetById(int id)
{
  var product = GetProduct(id);

  if(product == null)
    return NotFound();

  return product;
}


[HttpPost]
[ProducesResponseType(StatusCodes.Status201Created)]
[ProducesResponseType(StatusCodes.Status400BadRequest)]
pubic async Task<ActionResult<Product>> CreateAsync(Product product)
{
  if(product.Description.Contains("abc"))
    return BadRequest();

  await AddProduct(product);

  return CreatedAtAction(nameof(GetById), , new { id = product.Id }, product);
}

## sources
https://docs.microsoft.com/en-us/aspnet/core/web-api/action-return-types

