package com.Gangothri.dao;
import java.util.List;






import com.Gangothri.bean.Flight;





public interface FlightDao {
    
    public List<Flight> showAllFlights();
	public Flight showFlight(Long id);
	public List<Long> findAllFlights();
	public List<Flight> findByRouteId(Long routeId);
	public void save(Flight flight) ;
	public void addFlight(Flight flight);

    

}



