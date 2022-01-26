
hank you for this submission. It is a solid start.

Let's start with a couple purely stylistic issues:

    Lisp style is to not leave trailing parens on their own lines. So Lines 14 & 17 should be merged with their line before.

    Comments, like one line 10, would be better to explain why not what. Even better, in my opinion, would be to find a better name for c perhaps count as the comment says.

There are other things we could talk about - such as your choice to assign and then mutate a variable c, and the use of eql when = might be better. There are also some other features of loop that might improve the code.

--

Thank you for the comments, I followed your advice on the style and I took a better look at the forms that can be used with  loop statements. I changed to a count clause. 
