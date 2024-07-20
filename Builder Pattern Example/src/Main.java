public class Main {
    public static void main(String[] args) {
       PC pc1 = new PCBuilder()
               .setCpu("intel core i7")
               .setRam("8GB DD4")
               .setStorage(512)
               .setPowerSupply("in box")
               .setGpu("have a gpu")
               .createPC();



        System.out.println(pc1.toString());

    }
}

