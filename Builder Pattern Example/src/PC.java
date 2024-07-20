public class PC {
    private String CPU;
    private String GPU;
    private String RAM;
    private int Storage;
    private String powerSupply;

    PC(PCBuilder builder) {
        this.CPU = builder.cpu;
        this.GPU = builder.gpu;
        this.RAM = builder.ram;
        this.Storage = builder.storage;
        this.powerSupply = builder.powerSupply;
    }

    @Override
    public String toString() {
        return "\n CPU : "+CPU+
                "\n GPU : "+GPU+
                "\n RAM : "+RAM+
                "\n Storage : "+Storage+
                "\n Power Supply : "+powerSupply;
    }
}
