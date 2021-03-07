# clickonce

* Deployment manifest—A file used by the ClickOnce engine to figure out what application to deploy, when to deploy it, where to find the application files, and how to update it. File has .application extension.

* Application manifest—A file used by the ClickOnce engine to deter mine what files an application is composed of and what permissions the application requires to run. This is different from the application configu ration file, which is sometimes referred to as a manifest for the application. File has .exe.manifest extension.

It contains the identity information for the application (name, version, public key token, locale, and processor architecture).

* Deployment server—The server on which you place your manifests and application files, which lets end users perform a ClickOnce deployment.

* Deployment provider—The URL or address that gets embedded in the deployment manifest. It is used by ClickOnce to determine the address used to launch the application.

ClickOnce deployment modes:
1. Install Mode:
After the initial installation from the deploy ment server, an installed application is available whether or not the client machine can connect to the deployment server to check for updates. Shortcuts are added to start menu. An entry is added in Programs and Features to remove the app.
2. Online-only install mode
Users must always launch the application with a full URL to the deployment manifest on the server, and therefore must be connected to the network. No shortcut is added to start menu or in Programs & Features.
3. CD deployment
Allows deployment via CD.


In addition to the manifests, Visual Studio generates a setup.exe Bootstrap per file when it publishes your application. This file, which is not part of the ClickOnce deployment, lets you install any necessary prerequisites.

Use the mageui.exe GUI tool or the mage.exe command line tool to just update the deployment manifest. Mage stands for manifest generator and editing.
The deployment provider is called the Start Location in the mageui.exe editors.

You can use mage.exe:
"C:\Program Files\Microsoft Visual Studio 8\SDK\v2.0\Bin\mage.exe"
-Update C:\somefolder\EmployeeManager.application
-ProviderURL http://myserver/EmployeeManager/EmployeeManager.application
-CertFile C:\path\to\pfx.file
-Password mypwd

## ClickOnce on-demand API
System.Deployment.dll
System.Deployment.Application namespace
ApplicationDeployment class
- IsNetworkDeployed
- CurrentDeployment
- CheckForUpdate()
- Update()
If you do not first detect whether your application is running under ClickOnce, the ApplicationDeployment class will throw exception if you try to access any of its members other than the static IsNetworkDeployed property.

* synchronous update
  // Always confirm you are running through ClickOnce
   if (ApplicationDeployment.IsNetworkDeployed)
   {
      // Hold a reference to the current deployment
      var currentDeploy = ApplicationDeployment.CurrentDeployment;
      // Check to see if an update is available on the server
      if (currentDeploy.CheckForUpdate())
      {
         currentDeploy.Update();
         // Make sure you save application state here
         DialogResult dr = MessageBox.Show(
            "Update downloaded, restart application?",
            "Application Update",MessageBoxButtons.YesNo);
         if (dr == DialogResult.Yes)
         {
            System.Windows.Forms.Application.Restart();
         }
      }
//UpdateCheckInfo uci = current.CheckForDetailedUpdate();
//uci.UpdateAvailable
   }

* asynchronous update
      if (ApplicationDeployment.IsNetworkDeployed)
      {
         var current = ApplicationDeployment.CurrentDeployment;
         current.CheckForUpdateCompleted += OnCheckForUpdateCompleted;
         current.UpdateCompleted += OnUpdateCompleted;
         current.UpdateProgressChanged += OnUpdateProgressChanged;
         current.CheckForUpdateAsync();
       }

   void OnCheckForUpdateCompleted(object sender, CheckForUpdateCompletedEventArgs e)
   {
      if (e.UpdateAvailable)
      {
         var current = ApplicationDeployment.CurrentDeployment;
         current.UpdateAsync();
      }
   }
   void OnUpdateCompleted(object sender, AsyncCompletedEventArgs e)
  {
            System.Windows.Forms.Application.Restart();
  }

}
void OnUpdateProgressChanged(object sender, DeploymentProgressChangedEventArgs e)
{
   listBox1.Items.Add("-------------");
   listBox1.Items.Add("Deployment State: " + e.State.ToString());
   listBox1.Items.Add("Deployment progress: " + e.ProgressPercentage.ToString() + "%");
   listBox1.Items.Add("Bytes received: " + e.BytesCompleted.ToString());
   listBox1.Items.Add("Bytes to go: " + (e.BytesTotal - e.BytesCompleted).ToString());
   listBox1.Items.Add("-------------");
}

## Download Groups
When a user launches the application through ClickOnce, any files that are marked as part of a Download Group other than the (Required) group will not be downloaded and cached on the client automatically. You will need to add some code to your application to pull those files down programmatically at runtime and make them accessible to the client.

   if (ApplicationDeployment.IsNetworkDeployed)
   {
      var current = ApplicationDeployment.CurrentDeployment;
      if (!current.IsFileGroupDownloaded("Media Files"))
      {
         current.DownloadFileGroupCompleted += OnMediaDownloadComplete;
         current.DownloadFileGroupAsync("Media Files");
      }
   }

## reading url parameters
   if (ApplicationDeployment.IsNetworkDeployed)
   {
      Uri uri = ApplicationDeployment.CurrentDeployment.ActivationUri;
      if (uri != null && uri.Query.Length > 0)
      {
        var queryString = System.Web.HttpUtility.UrlDecode(uri.Query);
      }
   }

## manual deployment
https://docs.microsoft.com/en-us/visualstudio/deployment/walkthrough-manually-deploying-a-clickonce-application?view=vs-2015



