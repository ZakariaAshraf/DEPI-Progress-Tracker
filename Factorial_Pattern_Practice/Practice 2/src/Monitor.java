class Monitor extends Component {
    String name;

    Monitor(String name) {
        this.name = name;
    }

    public void sayName() {
        System.out.println("this is " + name);
    }
}
