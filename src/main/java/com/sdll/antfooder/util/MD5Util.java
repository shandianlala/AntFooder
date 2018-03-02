package com.sdll.antfooder.util;

import com.sun.xml.internal.ws.util.UtilException;
import org.apache.commons.codec.digest.DigestUtils;

/**
 * @author shandianlala
 *
 * 2018年3月2日 上午11:04:44
 *
 * MD5不可逆加密工具
 */
public class MD5Util {

    private static final long serialVersionUID = 5289691385575460865L;

    private MD5Util(){};

    /**
     *
     * 加密(32位)
     * @param source
     * @return
     * @throws UtilException
     */
    public static String crypt(String source) throws UtilException {
        try{
            return DigestUtils.md5Hex(source);
        }catch(Exception ex){
            throw new UtilException(ex);
        }
    }
}
