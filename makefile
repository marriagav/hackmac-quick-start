start-runtime:
	colima start --profile amd --arch x86_64 --cpu 4 --cpu-type "max" --memory 16 --network-address
start-runtime-rosetta:
	colima start --profile rosetta --cpu 4 --cpu-type "max" --memory 16 --arch aarch64 --vm-type=vz --vz-rosetta --mount-type virtiofs --network-address
run:
	docker-compose up
stop:
	docker stop hackmac-quick-start-hack-dev-1
delete:
	docker rm hackmac-quick-start-hack-dev-1
install:
	docker exec hackmac-quick-start-hack-dev-1 composer install
lint:
	docker exec hackmac-quick-start-hack-dev-1 vendor/bin/hhast-lint
test:
	docker exec hackmac-quick-start-hack-dev-1 vendor/bin/hacktest tests/
shell:
	docker exec -it hackmac-quick-start-hack-dev-1 /bin/bash