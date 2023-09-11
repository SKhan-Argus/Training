public class Content39 {
    public static void main(String[] args){

        double value1 = 20.00;
        double value2 = 80.00;
        double result = (value1 + value2) * 100.00;
        int remainder = (int)(result % 40.00);
        boolean haveRemainder = remainder == 0;
        if(!haveRemainder){
            System.out.println("Got some remainder.");
        }



    }
}
