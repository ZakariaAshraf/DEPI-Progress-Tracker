//Interface Segregation (ISP)


public interface MultiFunctionDevice {
    void print();

    void scan();
}
interface faxedFunctionDevice{
    void fax();
}

class OldPrinter implements MultiFunctionDevice{
    @Override
    public void print() {

    }

    @Override
    public void scan() {

    }

}
class NewPrinter implements MultiFunctionDevice ,faxedFunctionDevice{
    @Override
    public void print() {

    }

    @Override
    public void scan() {

    }

    @Override
    public void fax() {

    }
}
