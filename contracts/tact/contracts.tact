contract NumberGoUp(value: Int) {
    receive(msg: Add) {
        self.value += msg.value;
    }

    get fun getValuePlus(extra: Int): Int {
        return self.value + extra;
    }
}

message Add { value: Int }