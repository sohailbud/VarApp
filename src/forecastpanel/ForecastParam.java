package forecastpanel;

import java.util.ArrayList;
import java.util.Arrays;

public class ForecastParam {

    private ArrayList<Double> cost = new ArrayList<Double>();   
    private ArrayList<Double> spend = new ArrayList<Double>();   
    private ArrayList<String> allVariables = new ArrayList<String>();   

    private Double primeCost;
    private Double cableCost;
    private Double drtvCost;
    private Double satelliteCost;
    private Double localCost;
    private Double nonPrimeCost;
    private Double specialCost;
    private Double fixedCost;
    private Double homeCost;
    private Double gamesCost;
    private Double remarketCost;
    private Double programCost;
    private Double mobileCost;
    private Double otherCost;
    private Double radioCost;
    private Double printCost;  
    private Double primeSpend;
    private Double cableSpend;
    private Double drtvSpend;
    private Double satelliteSpend;
    private Double localSpend;
    private Double nonPrimeSpend;
    private Double specialSpend;
    private Double fixedSpend;
    private Double homeSpend;
    private Double gamesSpend;
    private Double remarketSpend;
    private Double programSpend;
	private Double mobileSpend;
    private Double otherSpend;
    private Double radioSpend;
    private Double printSpend;
    private Double conversionValue;
    private Double interestRate;  
    
	public Double getPrimeCost() {
		return primeCost;
	}

	public void setPrimeCost(Double primeCost) {
		this.primeCost = primeCost;
	}

	public Double getCableCost() {
		return cableCost;
	}

	public void setCableCost(Double cableCost) {
		this.cableCost = cableCost;
	}

	public Double getDrtvCost() {
		return drtvCost;
	}

	public void setDrtvCost(Double drtvCost) {
		this.drtvCost = drtvCost;
	}

	public Double getSatelliteCost() {
		return satelliteCost;
	}

	public void setSatelliteCost(Double satelliteCost) {
		this.satelliteCost = satelliteCost;
	}

	public Double getLocalCost() {
		return localCost;
	}

	public void setLocalCost(Double localCost) {
		this.localCost = localCost;
	}

	public Double getNonPrimeCost() {
		return nonPrimeCost;
	}

	public void setNonPrimeCost(Double nonPrimeCost) {
		this.nonPrimeCost = nonPrimeCost;
	}

	public Double getSpecialCost() {
		return specialCost;
	}

	public void setSpecialCost(Double specialCost) {
		this.specialCost = specialCost;
	}

	public Double getFixedCost() {
		return fixedCost;
	}

	public void setFixedCost(Double fixedCost) {
		this.fixedCost = fixedCost;
	}

	public Double getHomeCost() {
		return homeCost;
	}

	public void setHomeCost(Double homeCost) {
		this.homeCost = homeCost;
	}

	public Double getGamesCost() {
		return gamesCost;
	}

	public void setGamesCost(Double gamesCost) {
		this.gamesCost = gamesCost;
	}

	public Double getRemarketCost() {
		return remarketCost;
	}

	public void setRemarketCost(Double remarketCost) {
		this.remarketCost = remarketCost;
	}

	public Double getProgramCost() {
		return programCost;
	}

	public void setProgramCost(Double programCost) {
		this.programCost = programCost;
	}

	public Double getMobileCost() {
		return mobileCost;
	}

	public void setMobileCost(Double mobileCost) {
		this.mobileCost = mobileCost;
	}

	public Double getOtherCost() {
		return otherCost;
	}

	public void setOtherCost(Double otherCost) {
		this.otherCost = otherCost;
	}

	public Double getRadioCost() {
		return radioCost;
	}

	public void setRadioCost(Double radioCost) {
		this.radioCost = radioCost;
	}

	public Double getPrintCost() {
		return printCost;
	}

	public void setPrintCost(Double printCost) {
		this.printCost = printCost;
	}

	public Double getPrimeSpend() {
		return primeSpend;
	}

	public void setPrimeSpend(Double primeSpend) {
		this.primeSpend = primeSpend;
	}

	public Double getCableSpend() {
		return cableSpend;
	}

	public void setCableSpend(Double cableSpend) {
		this.cableSpend = cableSpend;
	}

	public Double getDrtvSpend() {
		return drtvSpend;
	}

	public void setDrtvSpend(Double drtvSpend) {
		this.drtvSpend = drtvSpend;
	}

	public Double getSatelliteSpend() {
		return satelliteSpend;
	}

	public void setSatelliteSpend(Double satelliteSpend) {
		this.satelliteSpend = satelliteSpend;
	}

	public Double getLocalSpend() {
		return localSpend;
	}

	public void setLocalSpend(Double localSpend) {
		this.localSpend = localSpend;
	}

	public Double getNonPrimeSpend() {
		return nonPrimeSpend;
	}

	public void setNonPrimeSpend(Double nonPrimeSpend) {
		this.nonPrimeSpend = nonPrimeSpend;
	}

	public Double getSpecialSpend() {
		return specialSpend;
	}

	public void setSpecialSpend(Double specialSpend) {
		this.specialSpend = specialSpend;
	}

	public Double getFixedSpend() {
		return fixedSpend;
	}

	public void setFixedSpend(Double fixedSpend) {
		this.fixedSpend = fixedSpend;
	}

	public Double getHomeSpend() {
		return homeSpend;
	}

	public void setHomeSpend(Double homeSpend) {
		this.homeSpend = homeSpend;
	}

	public Double getGamesSpend() {
		return gamesSpend;
	}

	public void setGamesSpend(Double gamesSpend) {
		this.gamesSpend = gamesSpend;
	}

	public Double getRemarketSpend() {
		return remarketSpend;
	}

	public void setRemarketSpend(Double remarketSpend) {
		this.remarketSpend = remarketSpend;
	}

	public Double getProgramSpend() {
		return programSpend;
	}

	public void setProgramSpend(Double programSpend) {
		this.programSpend = programSpend;
	}

	public Double getMobileSpend() {
		return mobileSpend;
	}

	public void setMobileSpend(Double mobileSpend) {
		this.mobileSpend = mobileSpend;
	}

	public Double getOtherSpend() {
		return otherSpend;
	}

	public void setOtherSpend(Double otherSpend) {
		this.otherSpend = otherSpend;
	}

	public Double getRadioSpend() {
		return radioSpend;
	}

	public void setRadioSpend(Double radioSpend) {
		this.radioSpend = radioSpend;
	}

	public Double getPrintSpend() {
		return printSpend;
	}

	public void setPrintSpend(Double printSpend) {
		this.printSpend = printSpend;
	}

	public Double getConversionValue() {
		return conversionValue;
	}

	public void setConversionValue(Double conversionValue) {
		this.conversionValue = conversionValue;
	}

	public Double getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(Double interestRate) {
		this.interestRate = interestRate;
	}

	public ArrayList<Double> getCostArray() {
		cost.addAll(Arrays.asList(primeCost,cableCost,drtvCost,satelliteCost,
				localCost,nonPrimeCost,specialCost,fixedCost,homeCost,gamesCost,
				remarketCost,programCost,mobileCost,otherCost,radioCost,printCost));
		return cost;
	}
	
	public ArrayList<Double> getSpendArray() {
		spend.addAll(Arrays.asList(primeSpend,cableSpend,drtvSpend,satelliteSpend,localSpend,nonPrimeSpend,
				specialSpend,fixedSpend,homeSpend,gamesSpend,remarketSpend,programSpend,
				mobileSpend,otherSpend,radioSpend,printSpend));
		return spend;
	}
	
	public ArrayList<String> getAllVariables() {
		allVariables.addAll(Arrays.asList("primeCost","cableCost","drtvCost","satelliteCost","localCost","nonPrimeCost",
				"specialCost","fixedCost","homeCost","gamesCost","remarketCost","programCost","mobileCost","otherCost",
				"radioCost","printCost","primeSpend","cableSpend","drtvSpend","satelliteSpend","localSpend","nonPrimeSpend",
				"specialSpend","fixedSpend","homeSpend","gamesSpend","remarketSpend","programSpend","mobileSpend","otherSpend",
				"radioSpend","printSpend","conversionValue","interestRate"));
		
		return allVariables;
	}

}
