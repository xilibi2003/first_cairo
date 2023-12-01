#[starknet::contract]
mod ownable {

    use starknet::ContractAddress;

    #[storage]
    struct Storage {
        owner: ContractAddress,
    }

    #[constructor]
    fn constructor(ref self: ContractState,
        init_owner: ContractAddress ) {
            self.owner.write(init_owner);
        }


    #[external(v0)]
    fn get_owner(self: @ContractState) -> ContractAddress {
        self.owner.read()
    }
}