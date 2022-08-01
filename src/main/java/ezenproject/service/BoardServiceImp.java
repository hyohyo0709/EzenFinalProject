package ezenproject.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import ezenproject.dao.BoardDAO;
import ezenproject.dto.BoardDTO;
import ezenproject.dto.PageDTO;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class BoardServiceImp implements BoardService{
	
	@Autowired
	private BoardDAO dao;
	 
	public BoardServiceImp() {
	
	}
	
	
	@Override
	public int countProcess() {
	
		return dao.count();
	}

	@Override
	public List<BoardDTO> listProcess(PageDTO pv) {
		return dao.list(pv);
	}

	@Override
	public void insertProcess(BoardDTO dto) {
		if(dto.getRef()!=0) {
		dao.reStepCount(dto);
		dto.setRe_step(dto.getRe_step()+1);
		dto.setRe_level(dto.getRe_level()+1);
		}
		dao.save(dto);
	}

	@Override
	public BoardDTO contentProcess(int num) {
		dao.readCount(num);
		return dao.content(num);
	}

	@Override
	public void reStepProcess(BoardDTO dto) {

	}

	@Override
	public BoardDTO updateSelectProcess(int num) {
		return dao.updateNum(num);
	}

	@Override
	public void updateProcess(BoardDTO dto, String urlpath) {
		
		String filename = dto.getUpload();
		if(filename!=null) {
		String path = dao.getFile(dto.getNum());
		//기존첨부 파일이 있으면 삭제
		if(path!=null) {
			File fe = new File(urlpath, path);
			fe.delete();
			}
		}
		
		dao.update(dto);
	}

	@Override
	public void deleteProcess(int num, String urlpath) {
			String path = dao.getFile(num);
			//기존첨부 파일이 있으면 삭제
			if(path!=null) {
				File fe = new File(urlpath, path);
				fe.delete();
			}
			dao.delete(num);
	}
	

	@Override
	public String fileSelectprocess(int num) {
		return dao.getFile(num);
	}

}
