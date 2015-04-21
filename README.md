# LinAlgNotes
If you're just here for the PDF, [here](https://github.com/pennal/LinAlgNotes/blob/master/PDFs/Notes.pdf) you go. Be advised, however, that the PDF is constantly changing. It is not finished yet, and is likely to contain many mistakes. If you see anything fishy, please file an issue.

This repo contains the LaTeX version of Professor's Pivkin class notes. Please read carefully this document at least once, so to clarify any doubts. 

Please do not distribute any PDF version of these notes as they are not complete. Link back to this repo instead.

WARNING
====================
THE FOLLOWING NOTES ARE A WORK IN PROGRESS. THEY ARE NOT COMPLETE, AND MIGHT CONTAIN MULTIPLE ERRORS. USE THEM AT YOUR OWN RISK! IF YOU DO FIND A MISTAKE, OPEN A TICKET AND IT WILL GET CORRECTED AS SOON AS POSSIBLE

Getting the material
====================

In order to get the material, there are two ways:

* Get a .zip file, containing all of the notes, as well as the source files. 
  1. Download the .zip archive [here](https://github.com/pennal/LinAlgNotes/archive/master.zip)
  2. Unzip it, you will find a folder named "Analysis-Notes-master", open it
  3. Open the "PDFs" Folder
  4. There are two files you have to pay attention to:
      * Notes.pdf: All of the notes from the course.
	  * Definitions.pdf: Cantains only the definitions. 
* Typeset (Build) it yourself from source. Take a look at the [Typeset](#Typeset) section

New PDFs are generated on an (almost) daily basis, so if you are not familiar with LaTeX, just get the files from the "PDF" folder.


<a name="Contributing"></a>
Contributing
============

Since these documents are still a very early version, they might contain a few (if not more) mistakes. Also, external contribution is vital for these notes to be as complete as possible. In order to report an error:

* If you want to report an issue, but not correct it yourself:
    1. On the right side of this page, click on the ["Issues"](https://github.com/pennal/LinAlgNotes/issues) tab
    2. Check if no one else has posted the same Issue. If no one has, open a new issue, stating:
        * Title: Chapter + Page Number
        * Message: Issue found, plus the eventual correction(s)
        * Tag: Add a tag that best classifies the issue, or ignore
    3. Post the issue, it will be corrected ASAP.
* If you want to fiy it yourself:
    1. First, check if someone has posted the same issue. If yes, mention it in your merge request (point 5.)
    2. Fork the repo. Help [here](https://help.github.com/articles/fork-a-repo)
    3. Make the changes, and commit them to your forked repo. Make sure to add detailed comments explaining what you changed!
    4. Pull changes from the original branch. If there are major conflicts when you request a merge, your changes will NOT be merged. Make sure you are always up to date with the original branch.
    5. Once you are done, request a Merge. Help [here](https://help.github.com/articles/using-pull-requests)

I will not take into consideration emails containing corrections. Please use the "Issues" tab so I can keep track of every change.


<a name="Typeset"></a>
Typeset
=========

1. Download the source from [here](https://github.com/pennal/LinAlgNotes/archive/master.zip)
2. Unzip it, and using the terminal <code>cd</code> into it. 
3. Run <code>./buildAll.sh</code>
4. Now open the PDFs folder and get the file(s) you need. 

