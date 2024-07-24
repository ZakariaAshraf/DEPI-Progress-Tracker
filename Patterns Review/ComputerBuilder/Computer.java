package Builder;

public class Computer {
    private String CPU;
    private int RAM;
    private String GPU;
    private int Storage;

    private Computer(ComputerBuilder builder) {
        this.CPU = builder.CPU;
        this.RAM = builder.RAM;
        this.GPU = builder.GPU;
        this.Storage = builder.Storage;
    }

    @Override
    public String toString() {
        return "Builder.Computer Specifications:\n" +
                "CPU: " + CPU + "\n" +
                "RAM: " + RAM + "GB\n" +
                "Storage: " + Storage + "GB\n" +
                "GPU: " + (GPU != null ? GPU : "Not included");
    }

    public static class ComputerBuilder {
        private String CPU;
        private int RAM;
        private String GPU;
        private int Storage;

       public ComputerBuilder CPU(String cpu){
            this.CPU=cpu;
            return this;
        }
       public ComputerBuilder RAM(int ram){
            this.RAM=ram;
            return this;
        }
       public ComputerBuilder GPU(String gpu){
            this.GPU=gpu;
            return this;
        }
        public ComputerBuilder Storage(int storage){
            this.Storage=storage;
            return this;
        }

        Computer build(){
            return new Computer(this);
        }

    }
}


