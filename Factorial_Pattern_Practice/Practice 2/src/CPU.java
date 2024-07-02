class CPU extends Component {
    String name;

    CPU(String name) {
        this.name = name;
    }

    public void sayName() {
        System.out.println("this is " + name);
    }
}
