#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Formula SAE proposal",
  subtitle: "A proposal for a cybersecurity focused Formula SAE project",
  subject: "Project proposal",
  guide: (
    name: "Stefano Chessa",
    designation: "Professor & Chair of the M.Sc. in Cybersecurity",
    department: "Computer Science"
  ),
  authors: (
    (
      name: "Daniele Giachetto", 
      department: "Department of Information Engineering",
      rollno: "647820"
    ),
    (
      name: "Edoardo",
      department: "Something",
      rollno: "694202",
    ),
  ),
  department: "Department of Information Engineering",
  institute: "Università degli studi di Pisa",
  degree: "Master of Science",
  year: "2022-2023",
  logo: "images/logo-unipi.png",
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= Introduction
#lorem(60)

== In this paper
#lorem(320)

== Contributions
#lorem(40)

== Some Other Things
#lorem(40)

== Some Other Things
#lorem(40)

= Related Work
#lorem(50)

== Level 2 Heading
#lorem(100)

=== Level 3 Heading
#lorem(100)

==== Level 4 Heading
#lorem(100)

===== Level 5 Heading
#lorem(100)

#box(
  stroke: 1pt,
  inset: 10pt,
  lorem(10)
)