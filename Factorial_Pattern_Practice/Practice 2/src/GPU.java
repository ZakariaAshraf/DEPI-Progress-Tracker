class GPU extends Component {
    String name;

    GPU(String name) {
        this.name = name;
    }

    public void sayName() {
        System.out.println("this is " + name);
    }
}
