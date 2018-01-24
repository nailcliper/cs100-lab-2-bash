#!/bin/sh
classname=$1

touch $classname.cc
touch $classname.hh

echo "#include \"./$classname.hh\"" > $classname.cc
echo"" >> $classname.cc
echo "$classname::$classname()" >> $classname.cc
echo "{}" >> $classname.cc
echo "" >> $classname.cc
echo "$classname::~$classname()" >> $classname.cc
echo "{}" >> $classname.cc


name=${classname}'_''h''h'
echo "#ifndef $name" > $classname.hh
echo "#define $name" >> $classname.hh
echo "" >> $classname.hh
echo "class $classname" >> $classname.hh
echo "{" >> $classname.hh
echo "  public:" >> $classname.hh
echo "    $classname();" >> $classname.hh
echo "    ~$classname();" >> $classname.hh
echo "" >> $classname.hh
echo "  private:" >> $classname.hh
echo "};" >> $classname.hh
echo "#endif" >> $classname.hh
