package com.bc.bee.wodexinxi.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bc.bee.entity.Delivery;
import com.bc.bee.entity.RecInfo;
import com.bc.bee.entity.Resume;
import com.bc.bee.wodexinxi.dao.DeliveryDaoImpl;
import com.bc.bee.wodexinxi.dao.RecInfoDaoImpl;
import com.framework.Page;

@Service
@Transactional(readOnly=true)
public class DeliveryServiceImpl {
	@Resource
	private DeliveryDaoImpl DeliveryDaoImpl;
	@Resource
	private RecInfoDaoImpl RecInfoDaoImpl;
	@Resource
	private com.bc.bee.wodexinxi.yaoqinghan.dao.ResumeDaoImpl ResumeDaoImpl;

	
	public List<Delivery> findByTUId(int TUId){
		return this.DeliveryDaoImpl.findByTUId(TUId);
	}
	
	public RecInfo findByRlId(int RlId){
		return this.RecInfoDaoImpl.findByRlId(RlId);
	}
	@Transactional(readOnly=false)
	public void deleteByDeId(int ReId){
		this.DeliveryDaoImpl.deleteByDeId(ReId);
	}
	public Delivery findByDeId(int DeId){
		return this.DeliveryDaoImpl.findByDeId(DeId);
	}
	public List<Delivery> findByPUId(int PUId){
		return this.DeliveryDaoImpl.findByPUId(PUId);
	}
	public Resume findByReId(int ReId){
		return this.ResumeDaoImpl.findByReId(ReId);
	}
	@Transactional(readOnly=false)
	public void uadateDelivery(Delivery delivery){
		try {
			this.DeliveryDaoImpl.update(delivery);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Page<Delivery> findDeliveryPageList(int TUId,int pageNum,String state, int pageSize){
		return this.DeliveryDaoImpl.findDeliveryPageList(TUId,pageNum,state,pageSize,null);
	}
	public Page<Delivery> findJzDeliveryPageList(int PUId, int pageNum,String state, int pageSize){
		return this.DeliveryDaoImpl.findJzDeliveryPageList(PUId,pageNum,state,pageSize,null);
	}

}
