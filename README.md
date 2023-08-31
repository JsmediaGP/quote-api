
# Quote API

The Quote API provides access to a collection of quotes organized by categories. Users can retrieve quotes based on specific categories or get random quotes.

## Table of Contents

- [Usage](#usage)
- [Endpoints](#endpoints)
- [Examples](#examples)

## Usage

This API is designed to be simple to use and can be accessed via HTTP requests. Below are the basic steps to get started:

2. **Endpoints**: Use the available API endpoints to retrieve quotes based on your requirements. Refer to the Endpoints section for a list of available endpoints and their descriptions.

3. **Request and Response Format**: Ensure your requests are properly formatted with the required parameters and headers, and handle the responses accordingly.


## Endpoints

### Get Random Quote

Get a random quote from the collection.

- **URL**: `/api/quotes`
- **Method**: `GET`
- **Parameters**: None
- **Response**:
  - `200 OK` on success with a JSON response containing the random quote.
  - `404 Not Found` if no quotes are available.
  - `500 Internal Server Error` for other errors.

### Search Quotes by Category

Search for quotes based on a specific category.

- **URL**: `/api/quotes/{category}`
- **Method**: `GET`
- **Parameters**:
  - `{category}`: The name of the category to search for.
- **Response**:
  - `200 OK` on success with a JSON response containing quotes in the specified category.
  - `404 Not Found` if no quotes are found for the category.
  - `500 Internal Server Error` for other errors.

[Include additional endpoints and their descriptions as needed.]

## Examples

### Get Random Quote

#### Request

```http
GET /api/quotes
```

#### Response

```json
{
    "quote": "The only limit to our realization of tomorrow will be our doubts of today."
}
```

### Search Quotes by Category

#### Request

```http
GET /api/quotes/inspiration
```

#### Response

```json
{
    "quotes": [
        "Success is not final, failure is not fatal: It is the courage to continue that counts.",
        "In the middle of every difficulty lies opportunity."
    ]
}
```

[Provide more examples as needed.]
