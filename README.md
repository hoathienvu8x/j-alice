# W e l c o m e    T o    J - A l i c e

Version 0.5  (built: Jun 20 2003)

Copyright (c) 2001-2003 Jonathan Roewen, Taras Glek

Licensed under the MIT License

## Obtaining Help & Assistance:

   For help & assistance, the recommended method is

 to post to the help forum. Links are available from

 the homepage <[http://j-alice.org](http://j-alice.org)>



## Ideas for Improvement & Other Suggestions:


   The recommended forum to use is the open

 discussion forum. Alternatively, the J-Alice

 General mailing list can be used. Note that you

 must be subscribed to post. Links to subscribing to

 the list are on the main page <[http://j-alice.org](http://j-alice.org)>



## Known Issues:



   A bug has been discovered in the parser, such that

 self closing tags with default parameters, such as

 `<star />` are not parsed correctly. Currently, using

 `<star />` instead of `<star/>` produces incorrect

 results. Solution is to either use `<star/>` or always

 state the parameters explicitly, such as:

 `<star index="1"/>` or `<star index="1" />`



 The End
