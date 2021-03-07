# try statements
The try block must be followed by a catch block, a finally block, or both.


## exception filters
catch(WebException ex) when (ex.Status == WebExceptionStatus.Timeout)
{

}

