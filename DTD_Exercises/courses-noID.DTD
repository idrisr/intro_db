<!--In this question, you are to create a DTD for a small XML data set drawn from -->
<!--the Stanford course catalog. There are multiple departments, each with a -->
<!--department chair, some courses, and professors and/or lecturers who teach -->
<!--courses. The XML data is here.-->

<!ELEMENT Course_Catalog (Department)*>
<!ELEMENT Department (Title, Chair, Course*)>
<!ATTLIST Department Code CDATA #REQUIRED>

<!ELEMENT Title (#PCDATA)>
<!ELEMENT Chair (Professor)>
<!ELEMENT Professor (First_Name, Middle_Initial?, Last_Name)>
<!ELEMENT First_Name (#PCDATA)>
<!ELEMENT Middle_Initial (#PCDATA)>
<!ELEMENT Last_Name (#PCDATA)>

<!ELEMENT Course (Title, Description?, Instructors, Prerequisites?)>
<!ATTLIST Course Number CDATA #REQUIRED Enrollment CDATA #IMPLIED>
<!ELEMENT Description (#PCDATA)>
<!ELEMENT Instructors (Professor | Lecturer)*>
<!ELEMENT Lecturer (First_Name, Middle_Initial?, Last_Name)>
<!ELEMENT Prerequisites (Prereq+)>
<!ELEMENT Prereq (#PCDATA)>
