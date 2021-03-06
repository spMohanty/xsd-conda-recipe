This example shows how to handle the xsi:type attributes when it is used
on root elements. For general coverage of XML Schema polymorphism handling
in the C++/Parser mapping see the polymorphism example.

The example consists of the following files:

supermen.xsd
  XML Schema which describes the "supermen" instance documents.

person.xml
superman.xml
batman.xml
  Sample XML instance documents.

supermen-pskel.hxx
supermen-pskel.cxx
  Parser skeletons generated by the XSD compiler from supermen.xsd.
  Note the use of the --generate-polymorphic command line option.

supermen-pimpl.hxx
supermen-pimpl.cxx
  Parser implementations that print the XML data to STDOUT.

driver.cxx
  Driver for the example. It implements a custom document parser
  that determines which XML Schema type is being parsed and uses
  the corresponding parser implementation. The driver first
  constructs a parser instance from all the individual parsers
  found in supermen-pimpl.hxx. In then invokes this parser instance
  to parse the input file.

To run the example on the sample XML instance documents simply execute:

$ ./driver person.xml
$ ./driver superman.xml
$ ./driver batman.xml
