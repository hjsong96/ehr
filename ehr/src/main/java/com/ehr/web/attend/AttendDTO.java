package com.ehr.web.attend;

import lombok.Data;

@Data
public class AttendDTO {
	private int atmgno, atmgsts, eno;
	private String atmgdate, atmgstr, atmgend;
}
