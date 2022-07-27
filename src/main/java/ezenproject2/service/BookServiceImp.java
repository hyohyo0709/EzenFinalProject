package ezenproject2.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ezenproject2.dao.BookDAO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class BookServiceImp implements BookService{

	
	
	@Autowired
	private BookDAO dao;
}
