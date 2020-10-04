# http

# package: net/http

# http.Handle
func Handle(pattern string, handler Handler)

type Handler interface {
  ServerHTTP(ResponseWriter, *Request)
}

- usage
type fooHandler struct {
  Message string
}

func (f *fooHandler) ServerHTTP(w http.ResponseWriter, r *http.Request) {
  w.Write([]byte(f.Message)
}


func main() {
  http.Handle("/foo", &fooHandler{Message: "Hi"})
}


# http.HandleFunc
func HandleFund(pattern string, handler func(ResponseWriter, *Request)

- usage

func main() {
  foo := func(w http.ResponseWriter, _ *http.Request) {
    w.Write([]byte("Hi"))
  }

  http.HandleFunc("/foo", foo)
}


# http.ListenAndServer
func ListenAndServe(addr string, handler Handler) error

http.ListAndServe(":5000", nil)

# http.MethodGet, MethodPost
# http.StatusInternalServerError, StatusBadRequest, StatusCreated, StatusMethodNotAllowed



= http.Request =
# r.Method
  - String
# r.Header
  - Header(map[string][]string)
# r.Body

bodyBytes, err := ioutil.ReadAll(r.Body)
err = json.Unmashal(bodyBytes, &newProduct)


# r.Url
type URL struct {
  Scheme string
  User *Userinfo
  Host
  Path
  RawPath
  RawQuery
  .....
}


func productHandler(w http.ResponseWriter, r *http.Request) {
  urlPathSegments := strings.Split(r.URL.Path, "products/")
  productId, err := strconv.Atoi(urlPathSegments[len(urlPathSegments)-1])

  if err != nil {
    w.Writeheader(http.StatusNotFound)
    return
  }
}


= http.ResponseWriter =
# w.WriteHeader(http.StatusInternalServerError)
# w.Header().Set("Content-Type", "application/json")
# w.Write(jsonBytes)



= Middlewares =

func middlewareHandler(handler http.Handler) http.Handler {
  return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
    // do stuff before intended handler here
    start := time.Now()
    handler.ServeHttp(w, r)
    // do stuff after intended handler here
    fmt.Printf("time: %s", time.Since(start))
  })
}

func intendedFunction(w http.ResponseWriter, r *http.Request) {
  // business logic here
}

func main() {
  intendedHandler := http.HandlerFunc(intendedFunction)
  http.Handle("/foo", middlewareHandler(intendedHandler))
  http.ListenAndServer(":5000", nil)
}



# CORS
Headers (added to http.ResponseWriter)

w.Header().Add("Access-Control-Allow-Origin", "*") // * allows any origin
w.Header().Add("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE")
w.Header().Add("Access-Control.Allow-Headers", "Accept, Content-Type, Content-Length, Authorization, X-CSRF-Token, Accept-Encoding")


