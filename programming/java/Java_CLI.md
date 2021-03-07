Run JAR file
java -classpath jarFile.jar packageName.MainClass
javac -version
http://docs.oracle.com/javase/tutorial/essential/environment/paths.html
javac ch01/sec01/HelloWorld.java java ch01.sec01.HelloWorld
java ch01.sec01.HelloWorld (

* java [interpreter options] class_name [program arguments]
%% class name should be specified a fully qualified class name, including
%% package name. It should not include .class file extension
%% The interpreter searches for the class in the classpath, a list of
%% directories and archive files where classes are stored.
%% The classpath can be specified either by an environment variable
%% or with the command line option -classpath. If both are present
%% the command-line option is used.

%% The Java CLASSPATH environment variable is a list of locations that are
%% searched for Java class files. Both the Java interpreter and Java compiler
%% use the CLASSPATH when searching for packages and Java classes.

%% An element of the classpath can be a directory or a JAR file.
%% e.g. Unix: export CLASSPATH=/home/java/classes:/home/josh/lib/foo.jar:.
%% e.g. Windows: set CLASSPATH=C:\home\java\classes;C:\home\josh\lib\foo.jar;.
%% The classpath may also include * to include all the JAR files in dir.
%% e.g. : export CLASSPATH=/home/libs/*

* javac -classpath /home/classes:/utils/utils.jar:. Foo.java
%% if you don't specify the CLASSPATH environment variable or command-line
%% option, the class path defaults to the current directory(.)

* java -Dstreet=sesame -Dscene=alley animals.birds.BigBird
%% Each system property is passed to the interpreter on the command line using
%% the -D option followed by name=value.
%% The value fo the street property is accessible using:
%% String street = System.getProperty("street");

* javap java.util.Stack
%% print a description of a compiles class
%% use -c option to see JVM instructions

* javac BigBird.java
%% javac allows one public class per file and insists the the file have the same
%% name as the class.

* javac -d /home/vicky/Java/classes BigBird.java
%% You can use the -d option to specify an alternative directory for storing the
%% class files javac generates.

* jar -cvf spaceblaster.jar spaceblaster
%% here we are creating spaceblaster.jar file from spaceblaster directory
%% jar provided in JDK, is like tar (tape archive) command in Unix.
%% c - create
%% v - verbose
%% t - list contents
%% x - extract
%% f - next argument is filename
%% JAR command automatically adds a directory called META-INF or our archive.
%% It always contains at least one file: MANIFEST.MF.

* jar -cvmf myManifest.mf file.jar dir
%% We can create a manifest fiel with keyword: value lines and add to jar.
%% We can get this manifest info using java.util.jar.Manifest class

* Main-Class: com.oreilly.Game
%% Aside from attributes, you can put a few special values in the manifes.
%% Main-Class allows you to specify the class with main()
%% If you add this to your manifest, we can run the jar file. More importantly,
%% on GUI environments, you can run jar files with double click.

* java -jar file.jar
%% java command can be used to launch an executable Java Archive (jar) file.
%% In this case, the JAR file includes metadate with the name of the startup
%% class containing the main() method, and the classpath becomes the JAR file
%% itself

* pack200 foo.pack.gz foo.jar
%% compress foo.jar in pack200 format (more efficient)

* unpack200 foo.pack.gz foo.jar


