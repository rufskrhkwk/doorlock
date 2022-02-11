package com.VO;

public class DoorLockVO {
	private int doorlockPW;

	public DoorLockVO() {
	}

	public DoorLockVO(int doorlockPW) {
		this.doorlockPW = doorlockPW;
	}

	public int getDoorlockPW() {
		return doorlockPW;
	}

	public void setMysensor(int doorlockPW) {
		this.doorlockPW = doorlockPW;
	}

	@Override
	public String toString() {
		return "{" + doorlockPW + "}";
	}
}
