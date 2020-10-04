# json

encoding/json

# json.Marshal
func Marshal(v interface{}) ([]byte, error)

# json.Unmarshal(data []byte, v inteface{}) error


# custom json using tags
type Product struct {
  ProductId     int      `json:"productId"`
  ProductName   string  `json:"productName,omitempty"`
  password      string  `json:"-"`
}

- Marshal
product := &Product{ProductId: 123, ProductName: "Demo"}

productJson, err := json.Marshal(product)
fmt.Println(string(productJson))

- Unmarshal
product := Product{}
err := json.Unmarshal([]byte(productJson), &product)


== sources ==
https://golang.org/pkg/encoding/xml/#MarshalIndent

