public class JSONPlaceholderExercise {
    private static final String BASE_URL = 'https://jsonplaceholder.typicode.com';
    
    /**
     * Exercise 1: Implement a GET request to fetch a post by ID
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to fetch
     * @return String - The JSON response from the API
     */
    public static String getPostById(Integer postId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        // 3. Set the HTTP method to 'GET'
        req.setMethod('GET');
        // 4. Send the request and get the response
        HttpResponse res = new Http().send(req);
        // 5. Return the response body as string
        return res.getBody();
    }
    
    /**
     * Exercise 2: Implement a POST request to create a new post
     * Endpoint: /posts
     * @param title - The title of the post
     * @param body - The body content of the post
     * @param userId - The user ID creating the post
     * @return String - The JSON response from the API
     */
    public static String createPost(String title, String body, Integer userId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts'
        req.setEndpoint(BASE_URL + '/posts');
        // 3. Set the HTTP method to 'POST'
        req.setMethod('POST');
        // 4. Create a JSON string with the post data
        // 5. Set the request body
        req.setBody(JSON.serialize(new Map<String,Object> {
            'title' => title,
            'body' => body,
            'userId' => userId
        }));
        // 6. Send the request and get the response
        HttpResponse res = new Http().send(req);
        // 7. Return the response body as string
        return res.getBody();
    }
    
    /**
     * Exercise 3: Implement a PUT request to update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to update
     * @param title - The new title
     * @param body - The new body content
     * @param userId - The user ID
     * @return String - The JSON response from the API
     */
    public static String updatePost(Integer postId, String title, String body, Integer userId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        // 3. Set the HTTP method to 'PUT'
        req.setMethod('PUT');
        // 4. Create a JSON string with the updated post data
        // 5. Set the request body
        req.setBody(JSON.serialize(new Map<String,Object> {
            'title' => title,
            'body' => body,
            'userId' => userId
        }));
        // 6. Send the request and get the response
        HttpResponse res = new Http().send(req);
        // 7. Return the response body as string
        return res.getBody();
    }
    
    /**
     * Exercise 4: Implement a PATCH request to partially update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to patch
     * @param title - The new title (can be null)
     * @return String - The JSON response from the API
     */
    public static String patchPostTitle(Integer postId, String title) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        // 3. Set the HTTP method to 'PATCH'
        req.setMethod('PATCH');
        // 4. Create a JSON string with only the title
        String body = JSON.serialize(new Map<String,Object> {
            'title' => title
        });
        // 5. Set the request body
        req.setBody(body);
        // 6. Send the request and get the response
        HttpResponse res = new Http().send(req);
        // 7. Return the response body as string
        return res.getBody();
    }
    
    /**
     * Exercise 5: Implement a DELETE request to remove a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to delete
     * @return Integer - The HTTP status code from the response
     */
    public static Integer deletePost(Integer postId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        HttpRequest req = new HttpRequest();
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        // 3. Set the HTTP method to 'DELETE'
        req.setMethod('DELETE');
        // 4. Send the request and get the response
        HttpResponse res = new Http().send(req);
        // 5. Return the response status code
        return res.getStatusCode();
    }
} 