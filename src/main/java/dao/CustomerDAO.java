package dao;

import java.util.List;

import beans.Customer;

public interface CustomerDAO {
	public void addCusteomer(Customer c);
	public List<Customer> getCustomerList();
}
