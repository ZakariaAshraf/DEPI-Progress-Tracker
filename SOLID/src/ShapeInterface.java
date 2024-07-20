//Liskov Substitution (LSP)


public interface ShapeInterface {
    int getArea();


}
class Square1 implements ShapeInterface{
    private int width;
    private int height;
 public Square1(int width,int height){
        this.width=width;
        this.height=height;
 }
    @Override
    public int getArea() {
        return width*height;
    }

}
