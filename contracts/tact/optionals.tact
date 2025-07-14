struct StOpt {
    // Optionals as struct fields
    opt: Int?; // Int or null
}

message MsOpt {
    // Optionals as message fields
    opt: StOpt?; // notice how the struct StOpt is used in this definition
}

contract Optionals(
    // Optionals as contract parameters
    opt: Int?,
    address: Address?,
) {
    // Optionals as function parameters
    fun reset(opt: Int?) {
        self.opt = opt;
        self.address = null; // explicit null value
    }

    receive(msg: MsOpt) {
        // Optionals as local variables
        let opt: Int? = 12;

        // Explicit check of the message struct field
        if (msg.opt != null) {
            // Non-null assertion to work with its inner value
            self.reset(msg.opt!!.opt);
        }
    }
}