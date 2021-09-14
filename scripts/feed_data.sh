for i in {1..99}
do
	RANDOM=
	URL="https://$(uuidgen).com"
	curl -X POST -s http://104.248.24.218:3000/api/blockchain/insert?value="$URL" > /dev/null &
done
