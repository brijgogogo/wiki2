# async await examples
In below event handler, everything below the `await` is a continuation (on main thread). (for continuation check [tpl](tpl))

//example 1
private void `async` void LoginButton_Click(object sender, RoutedEventArgs e) {
  `await` Task.Run(() => Thread.Sleep(2000));

  LoginButton.Content = "Login Successful";
}

//example 2
private void async void LoginButton_Click(object sender, RoutedEventArgs e) {
  var result = await Task.Run(() => {
    Thread.Sleep(2000)
    return "Login Successful";
  });

  LoginButton.Content = result;
}

//example 3
private async void LoginButton_Click(object sender, RoutedEventArgs e) {
  try {
    await LoginAsync();
  }
  catch(Exception ex){
    LoginButton.Content = "Login Failed";
  }
}

private async Task LoginAsync() {}
  try {
    var result = await Task.Run(() => {
      Thread.Sleep(2000)
      return "Login Successful";
    });

    LoginButton.Content = result;
  }
  catch(Exception ex) {

  }
}

// example 4
private async Task<string> LoginAsync() {}
  try {
    var result = await Task.Run(() => {
      Thread.Sleep(2000)
      return "Login Successful";
    });

    return result;
  }
  catch(Exception ex) {
    return "Login failed!";
  }
}


// example 5
private async Task<string> LoginAsync() {}
  try {
    var loginTask = await Task.Run(() => {
      Thread.Sleep(2000)
      return "Login Successful";
    });

    var logTask = Task.Delay(2000); // log the login

    var purchanseTask = Task.Delay(1000); // fetch purchases

    await Task.WhenAll(loginTask, logTask, purchaseTask);

    return loginTask.Result;
  }
  catch(Exception ex) {
    return "Login failed!";
  }
}

//example 6
public async Task<ActionResult> Index() {
  using(var client = new HttpClient()) {
    var httpMessage = await
    client.GetAsync("http://www.filipeberg.se/rss").ConfigureAwait(false);
    var content = await httpMessage.Content.ReadStringAsync();
    return Content(content);
  }
}

