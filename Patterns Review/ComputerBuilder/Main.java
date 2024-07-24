package Builder;

import Builder.Computer;

public class Main {
    public static void main(String[] args) {
        Computer MyNewComputer = new Computer
                .ComputerBuilder()
                .CPU("Core i7")
                .GPU("NIVIDIA RTX 3080")
                .RAM(16)
                .Storage(256)
                .build();
        System.out.println(MyNewComputer.toString());
    }
}