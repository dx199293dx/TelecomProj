package intf;

import java.util.List;

import beans.Customer;
import beans.CustomerFieldCanBeNull;

public interface CustomerDAO {
	public int addCusteomer(CustomerFieldCanBeNull c);
	public Customer getCustomer(int id);
	public List<Customer> getCustomerList();
	public void updateCustomer(Customer customer);
}
