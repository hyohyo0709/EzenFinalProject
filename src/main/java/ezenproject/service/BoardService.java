package ezenproject.service;

import java.util.List;


import ezenproject.dto.BoardDTO;
import ezenproject.dto.PageDTO;



public interface BoardService {
	public int countProcess(); 
	public List<BoardDTO> listProcess(PageDTO pv);
	public void insertProcess(BoardDTO dto);
	public BoardDTO contentProcess(int num);
	public void reStepProcess(BoardDTO dto);
	public void updateProcess(BoardDTO dto, String urlpath);
	public void deleteProcess(int num, String urlpath);
	public String fileSelectprocess(int num);

}
