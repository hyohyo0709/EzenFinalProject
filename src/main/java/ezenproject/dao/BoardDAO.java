package ezenproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import ezenproject.dto.BoardDTO;
import ezenproject.dto.PageDTO;


@Mapper
@Repository
public interface BoardDAO {
	public int count();
	public List<BoardDTO> list(PageDTO pv);
	public void readCount(int num);
	public BoardDTO content(int num);
	public void reStepCount(BoardDTO dto);
	public void save(BoardDTO dto);
	public BoardDTO updateNum(int num);
	public void update(BoardDTO dto);
	public void delete(int num);
	public String getFile(int num);
}
