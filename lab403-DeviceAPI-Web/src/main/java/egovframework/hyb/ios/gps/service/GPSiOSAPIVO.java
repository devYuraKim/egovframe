/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.hyb.ios.gps.service;

import java.io.Serializable;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**  
 * @Class Name : GPSAPIVO.java
 * @Description : GPSAPIVO Class
 * @Modification Information  
 * @
 * @ 수정일               수정자              수정내용
 * @ ----------   ---------   -------------------------------
 *   2012.07.31   이한철              최초생성
 *   2020.07.29   신용호              Swagger 적용
 * 
 * @author 디바이스 API 실행환경 개발팀
 * @since 2012. 05. 14
 * @version 1.0
 * @see
 * 
 *  Copyright (C) by MOPAS All right reserved.
 */

@ApiModel
public class GPSiOSAPIVO implements Serializable {

    private static final long serialVersionUID = 1L;

    /** 일련번호 */
    @ApiModelProperty(value="일련번호")
    private int sn;

    /** 기기식별코드 */
    @ApiModelProperty(value="기기식별코드")
    private String uuid;

    /** latitude(위도) */
    @ApiModelProperty(value="위도")
    private String lat;

    /** longtitude(경도) */
    @ApiModelProperty(value="경도")
    private String lon;

    /** 사용여부 */
    @ApiModelProperty(value="사용여부")
    private String useYn;

    /**
     * @return sn을 반환한다
     */
    public int getSn() {
        return sn;
    }

    /**
     * @param 파라미터
     *            sn를 변수 sn에 설정한다.
     */
    public void setSn(int sn) {
        this.sn = sn;
    }

    /**
     * @return uuid을 반환한다
     */
    public String getUuid() {
        return uuid;
    }

    /**
     * @param 파라미터
     *            uuid를 변수 uuid에 설정한다.
     */
    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    /**
     * @return lat 을 반환한다
     */
    public String getLat() {
        return lat;
    }

    /**
     * @param 파라미터
     *            lat 를 변수 lat 에 설정한다.
     */
    public void setLat(String lat) {
        this.lat = lat;
    }

    /**
     * @return lon 을 반환한다
     */
    public String getLon() {
        return lon;
    }

    /**
     * @param 파라미터
     *            lon 를 변수 lon 에 설정한다.
     */
    public void setLon(String lon) {
        this.lon = lon;
    }

    /**
     * @return useYn을 반환한다
     */
    public String getUseYn() {
        return useYn;
    }

    /**
     * @param 파라미터
     *            useYn를 변수 useYn에 설정한다.
     */
    public void setUseYn(String useYn) {
        this.useYn = useYn;
    }

}
