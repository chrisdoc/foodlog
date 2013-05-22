package at.fhooe.mc.foodlog.model;

import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

import java.io.Serializable;

@Root(strict = false)
public class FoodData implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = -7437834316025041636L;
    @Element(required = false)
    int amount;
    @Element(required = false)
    String amount_measuring_system;
    @Element(required = false)
    String aggregate_state;
    @Element(required = false)
    int kj;
    @Element(required = false)
    int kcal;
    @Element(required = false)
    double fat_gram;
    @Element(required = false)
    double kh_gram;
    @Element(required = false)
    double sugar_gram;
    @Element(required = false)
    double protein_gram;
    @Element(required = false)
    double df_gram;
    @Element(required = false)
    double water_gram;
    @Element(required = false)
    double alcohol_gram;
    @Element(required = false)
    double v_a_mg;
    @Element(required = false)
    double v_b1_mg;
    @Element(required = false)
    double v_b2_mg;
    @Element(required = false)
    double v_b6_mg;
    @Element(required = false)
    double v_b12_mg;
    @Element(required = false)
    double v_c_mg;
    @Element(required = false)
    double v_d_mg;
    @Element(required = false)
    double m_eisen_mg;
    @Element(required = false)
    double m_calcium_mg;
    @Element(required = false)
    double m_magnesium_mg;
    @Element(required = false)
    double m_natrium_mg;
    @Element(required = false)
    double m_zink_mg;
    @Element(required = false)
    double m_kupfer_mg;

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("amount");
        sb.append(amount);
        sb.append(amount_measuring_system);
        sb.append("kcal:");
        sb.append(kcal);
        return sb.toString();
    }
    /*<v_c_mg></v_c_mg>
    <v_d_mg></v_d_mg>
	<v_e_mg>0.58</v_e_mg>
	<m_eisen_mg>0.7400</m_eisen_mg>
	<m_calcium_mg>60.00</m_calcium_mg>
	<m_magnesium_mg>25.00</m_magnesium_mg>
	<m_natrium_mg>540.00</m_natrium_mg>
	<m_zink_mg>0.66</m_zink_mg>
	<m_kupfer_mg>0.220000</m_kupfer_mg>
	<m_schwefel_mg></m_schwefel_mg>
	<m_mangan_mg>0.6</m_mangan_mg>
	<m_chlor_mg></m_chlor_mg>
	<m_fluor_mg></m_fluor_mg>
	<m_kalium_mg>130.0</m_kalium_mg>
	<m_phosphor_mg>85</m_phosphor_mg>*/

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }


    public String getAggregate_state() {
        return aggregate_state;
    }

    public void setAggregate_state(String aggregate_state) {
        this.aggregate_state = aggregate_state;
    }

    public int getKj() {
        return kj;
    }

    public void setKj(int kj) {
        this.kj = kj;
    }

    public int getKcal() {
        return kcal;
    }

    public void setKcal(int kcal) {
        this.kcal = kcal;
    }

    public double getFat_gram() {
        return fat_gram;
    }

    public void setFat_gram(double fat_gram) {
        this.fat_gram = fat_gram;
    }

    public double getKh_gram() {
        return kh_gram;
    }

    public void setKh_gram(double kh_gram) {
        this.kh_gram = kh_gram;
    }

    public double getSugar_gram() {
        return sugar_gram;
    }

    public void setSugar_gram(double sugar_gram) {
        this.sugar_gram = sugar_gram;
    }

    public double getProtein_gram() {
        return protein_gram;
    }

    public void setProtein_gram(double protein_gram) {
        this.protein_gram = protein_gram;
    }

    public double getDf_gram() {
        return df_gram;
    }

    public void setDf_gram(double df_gram) {
        this.df_gram = df_gram;
    }

    public double getWater_gram() {
        return water_gram;
    }

    public void setWater_gram(double water_gram) {
        this.water_gram = water_gram;
    }

    public double getAlcohol_gram() {
        return alcohol_gram;
    }

    public void setAlcohol_gram(double alcohol_gram) {
        this.alcohol_gram = alcohol_gram;
    }

    public double getV_a_mg() {
        return v_a_mg;
    }

    public void setV_a_mg(double v_a_mg) {
        this.v_a_mg = v_a_mg;
    }

    public double getV_b1_mg() {
        return v_b1_mg;
    }

    public void setV_b1_mg(double v_b1_mg) {
        this.v_b1_mg = v_b1_mg;
    }

    public double getV_b2_mg() {
        return v_b2_mg;
    }

    public void setV_b2_mg(double v_b2_mg) {
        this.v_b2_mg = v_b2_mg;
    }

    public double getV_b6_mg() {
        return v_b6_mg;
    }

    public void setV_b6_mg(double v_b6_mg) {
        this.v_b6_mg = v_b6_mg;
    }

    public double getV_b12_mg() {
        return v_b12_mg;
    }

    public void setV_b12_mg(double v_b12_mg) {
        this.v_b12_mg = v_b12_mg;
    }

    public double getV_c_mg() {
        return v_c_mg;
    }

    public void setV_c_mg(double v_c_mg) {
        this.v_c_mg = v_c_mg;
    }

    public double getV_d_mg() {
        return v_d_mg;
    }

    public void setV_d_mg(double v_d_mg) {
        this.v_d_mg = v_d_mg;
    }

    public double getM_eisen_mg() {
        return m_eisen_mg;
    }

    public void setM_eisen_mg(double m_eisen_mg) {
        this.m_eisen_mg = m_eisen_mg;
    }

    public double getM_calcium_mg() {
        return m_calcium_mg;
    }

    public void setM_calcium_mg(double m_calcium_mg) {
        this.m_calcium_mg = m_calcium_mg;
    }

    public double getM_magnesium_mg() {
        return m_magnesium_mg;
    }

    public void setM_magnesium_mg(double m_magnesium_mg) {
        this.m_magnesium_mg = m_magnesium_mg;
    }

    public double getM_natrium_mg() {
        return m_natrium_mg;
    }

    public void setM_natrium_mg(double m_natrium_mg) {
        this.m_natrium_mg = m_natrium_mg;
    }

    public double getM_zink_mg() {
        return m_zink_mg;
    }

    public void setM_zink_mg(double m_zink_mg) {
        this.m_zink_mg = m_zink_mg;
    }

    public double getM_kupfer_mg() {
        return m_kupfer_mg;
    }

    public void setM_kupfer_mg(double m_kupfer_mg) {
        this.m_kupfer_mg = m_kupfer_mg;
    }

    public String getAmount_measuring_system() {
        return amount_measuring_system;
    }

    public void setAmount_measuring_system(String amount_measuring_system) {
        this.amount_measuring_system = amount_measuring_system;
    }
}
