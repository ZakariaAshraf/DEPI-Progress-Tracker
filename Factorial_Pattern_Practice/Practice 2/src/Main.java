public class Main {
    public static void main(String[] args) {


Computer c1 = new DellManufacturer();
Computer c2 =new LenovoManufacturer();
Computer c3 =new ToshibaManufacturer();
CPU c =c1.createCPU();
GPU g =c2.createGPU();
Monitor m =c3.createMonitor();
c.sayName();
g.sayName();
m.sayName();
    }
}