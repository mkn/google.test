

rm -rf g google

git clone https://github.com/google/googletest -b master g --recursive

mkdir -p google/test
mkdir -p google/mock

cp -r g/googletest/include google/test/include
cp -r g/googletest/src google/test/src
cp g/googletest/* google/test 2>&1 | grep -v "omitting directory"
rm google/test/Ma*
rm google/test/CM*
rm google/test/co*

cp -r g/googlemock/include google/mock/include
cp -r g/googlemock/src google/mock/src
cp g/googlemock/* google/mock 2>&1 | grep -v "omitting directory"
rm google/mock/Ma*
rm google/mock/CM*
rm google/mock/co*

rm -rf g