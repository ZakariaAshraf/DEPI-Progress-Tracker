public  class PCBuilder {
 String cpu;
    String gpu;
    String ram;
    int storage;
    String powerSupply;

    public PCBuilder setCpu(String cpu) {
        this.cpu = cpu;
        return this;
    }

    public PCBuilder setGpu(String gpu) {
        this.gpu = gpu;
        return this;
    }

    public PCBuilder setRam(String ram) {
        this.ram = ram;
        return this;
    }

    public PCBuilder setStorage(int storage) {
        this.storage = storage;
        return this;
    }

    public PCBuilder setPowerSupply(String powerSupply) {
        this.powerSupply = powerSupply;
        return this;
    }

    public PC createPC() {
        return new PC(this);
    }
}