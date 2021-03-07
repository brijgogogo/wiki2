# file io

## Read Directory
files, err := ioutil.ReadDir("my_dir") // "io/ioutil"
for _, file := range files {
  if file.IsDir() {
    fmt.Println("Directory:", file.Name())
  } else {
    fmt.Println("File:", file.Name())
  }
}
