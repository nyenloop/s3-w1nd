package com.dasanzhone.seawind.swservice.transformation;

import java.time.ZonedDateTime;
import java.util.GregorianCalendar;

import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

import com.dasanzhone.namespace.weatherservice.datatypes.ArrayOfForecast;
import com.dasanzhone.namespace.weatherservice.datatypes.Forecast;
import com.dasanzhone.namespace.weatherservice.datatypes.POP;
import com.dasanzhone.namespace.weatherservice.datatypes.Temp;
import com.dasanzhone.namespace.weatherservice.general.ForecastReturn;

public final class GetCityForecastByZIPOutMapper {

	private static com.dasanzhone.namespace.weatherservice.general.ObjectFactory objectFactoryGeneral = new com.dasanzhone.namespace.weatherservice.general.ObjectFactory();
	private static com.dasanzhone.namespace.weatherservice.datatypes.ObjectFactory objectFactoryDatatypes = new com.dasanzhone.namespace.weatherservice.datatypes.ObjectFactory();

	public static ForecastReturn mapGeneralOutlook2Forecast() {      
		ForecastReturn forecastReturn = objectFactoryGeneral.createForecastReturn();
		forecastReturn.setCity("Weimar");
		forecastReturn.setState("Deutschland");
		forecastReturn.setSuccess(true);
		forecastReturn.setWeatherStationCity("Weimar");
		forecastReturn.setForecastResult(generateForecastResult(forecastReturn.getCity()));
		return forecastReturn;
    }


	private static ArrayOfForecast generateForecastResult(String city) {
		ArrayOfForecast forecastContainer = objectFactoryDatatypes.createArrayOfForecast();
		forecastContainer.getForecast().add(generateForecast(city));
		return forecastContainer;
	}


	private static Forecast generateForecast(String city) {
		Forecast forecast = objectFactoryDatatypes.createForecast();	
		forecast.setDate(generateCalendarFromNow());
		forecast.setDesciption("Vorhersage für " + city);
		forecast.setTemperatures(generateTemp());
		forecast.setProbabilityOfPrecipiation(generateRegenwahrscheinlichkeit());
		return forecast;
	}

	
	private static POP generateRegenwahrscheinlichkeit() {
		POP pop = objectFactoryDatatypes.createPOP();
		pop.setDaytime("22%");
		pop.setNighttime("5000%");
		return pop;
	}


	private static Temp generateTemp() {
		Temp temp = objectFactoryDatatypes.createTemp();
		temp.setDaytimeHigh("90°");
		temp.setMorningLow("0°");
		return temp;
	}


	private static XMLGregorianCalendar generateCalendarFromNow() {
		GregorianCalendar gregCal = GregorianCalendar.from(ZonedDateTime.now());
		XMLGregorianCalendar xmlGregCal = null;
		try {
			xmlGregCal = DatatypeFactory.newInstance().newXMLGregorianCalendar(gregCal);
		} catch (DatatypeConfigurationException exception) {
			//LOG.calenderMappingNotWorking(exception);
		}
		return xmlGregCal;
	}
	
}