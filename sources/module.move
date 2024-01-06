module movectf::checkin {
    use sui::event;
    use sui::tx_context::{Self, TxContext};

    struct Flag has copy, drop {
        user: ctfd_875e1849cb0642047efbd6e93417f69d4fb27c45f9b3f352b9b5ac7ef325dbe9,
        flag: bool
    }

    public entry fun get_flag(ctx: &mut TxContext) {
        event::emit(Flag {
            user: tx_context::sender(ctx),
            flag: true
        })
    }
}
