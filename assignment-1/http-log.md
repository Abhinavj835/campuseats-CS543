\# HTTP Log — CampusEats Assignment 1



\## Request 1: Get a single post



\*\*curl -i https://jsonplaceholder.typicode.com/posts/1\*\*

\*\*HTTP/1.1 200 OK

Content-Type: application/json; charset=utf-8

Content-Length: 292



{

"userId": 1,

"id": 1,

"title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",

"body": "quia et suscipit\\nsuscipit recusandae consequuntur expedita et cum\\nreprehenderit molestiae ut ut quas totam\\nnostrum rerum est autem sunt rem eveniet architecto"

}\*\*



\*\*Note:\*\* 200 means the request succeeded and the server returned the requested resource. Content-Type application/json means the response body is JSON data.



\## Request 2:Get comments for a post (related resource)

\*\*curl -i https://jsonplaceholder.typicode.com/posts/1/comments\*\*

\*\*Response:\*\*

HTTP/1.1 200 OK

Content-Type: application/json; charset=utf-8



\[

{

"postId": 1,

"id": 1,

"name": "id labore ex et quam laborum",

"email": "Eliseo@gardner.biz",

"body": "laudantium enim quasi est quidem magnam voluptate ipsam eos..."

}

... (4 more comments, same structure)

]





\## Request 3: Get a single user (different resource type)

\*\*Command:\*\*

curl -i https://jsonplaceholder.typicode.com/users/3



\*\*Response:\*\*

HTTP/1.1 200 OK

Content-Type: application/json; charset=utf-8

Content-Length: 520



{

"id": 3,

"name": "Clementine Bauch",

"username": "Samantha",

"email": "Nathan@yesenia.net",

"address": {

"street": "Douglas Extension",

"suite": "Suite 847",

"city": "McKenziehaven",

"zipcode": "59590-4157",

"geo": {

"lat": "-68.6102",

"lng": "-47.0653"

}

},

"phone": "1-463-123-4447",

"website": "ramiro.info",

"company": {

"name": "Romaguera-Jacobson",

"catchPhrase": "Face to face bifurcated interface",

"bs": "e-enable strategic applications"

}

}



\*\*Note:\*\* 200 means success; Content-Type application/json means JSON data. This response shows a "user" resource with nested JSON objects (address containing a nested geo object) — a different noun than posts/comments.







\## Request 4: Get a single album (another resource type)

\*\*Command:\*\*

curl -i https://jsonplaceholder.typicode.com/albums/1



\*\*Response:\*\*

HTTP/1.1 200 OK

Content-Type: application/json; charset=utf-8

Content-Length: 64



{

"userId": 1,

"id": 1,

"title": "quidem molestiae enim"

}



\*\*Note:\*\* 200 means success; Content-Type application/json means JSON data. This is a simple flat resource (no nesting) representing an album belonging to a user.



\## Request 5: Deliberate failure — post that doesn't exist

\*\*Command:\*\*

curl -i https://jsonplaceholder.typicode.com/posts/99999



\*\*Response:\*\*

HTTP/1.1 404 Not Found

Content-Type: application/json; charset=utf-8

Content-Length: 2



{}



\*\*Note:\*\* 404 means the requested resource does not exist — the URL pattern is valid but no post with ID 99999 exists. Content-Type is still application/json even on error responses, showing errors follow the same format convention as success responses.



