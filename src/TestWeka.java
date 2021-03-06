import java.io.FileNotFoundException;
import java.io.IOException;

import weka.classifiers.functions.LinearRegression;
import weka.core.Instances;

public class TestWeka {

    /**
     * @param args
     */
    public static void main(String[] args) {
        String inputFile = "./houses.arff";
        java.io.Reader r;
		
        try {

            r = new java.io.BufferedReader(new java.io.FileReader(inputFile));
			
            Instances instances = new Instances(r);
            instances.setClassIndex(instances.numAttributes() - 1);
            LinearRegression linearRegression = new LinearRegression();
            linearRegression.buildClassifier(instances);
            double[] coef = linearRegression.coefficients();
            double myHouseValue = (coef[0] * 3198) + (coef[1] * 9669)
                    + (coef[2] * 5) + (coef[3] * 3) + (coef[4] * 1) + coef[6];

            System.out.println(myHouseValue);
			
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
		

    }

}
