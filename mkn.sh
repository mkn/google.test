

if [ ! -d "./g" ]; then
	git clone https://github.com/google/googletest -b master g --recursive
fi