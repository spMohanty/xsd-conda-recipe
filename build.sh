echo "Source DIR : ${SRC_DIR}"
echo "PREFIX : ${PREFIX}"
echo "RECIPE DIR : ${RECIPE_DIR}"

cp ${SRC_DIR}/bin/xsd ${PREFIX}/bin/
cp -r ${SRC_DIR}/libxsd/xsd ${PREFIX}/include