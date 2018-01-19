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

echo "#ifndef $classname_hh" > $classname.hh
echo "#define $classname_hh" >> $classname.hh
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
