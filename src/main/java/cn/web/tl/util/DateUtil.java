package cn.web.tl.util;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author dxq
 * @date 2019-05-29 - 17:09
 */
public class DateUtil {

    // 默认显示日期的格式
    public static final String DATAFORMAT_STR = "yyyy-MM-dd";

    // 默认显示日期的格式
    public static final String YYYY_MM_DATAFORMAT_STR = "yyyy-MM";

    // 默认显示日期时间的格式
    public static final String DATATIMEF_STR = "yyyy-MM-dd HH:mm:ss";

    // 默认显示简体中文日期的格式
    public static final String ZHCN_DATAFORMAT_STR = "yyyy年MM月dd日";

    // 默认显示简体中文日期时间的格式
    public static final String ZHCN_DATATIMEF_STR = "yyyy年MM月dd日HH时mm分ss秒";

    // 默认显示简体中文日期时间的格式
    public static final String ZHCN_DATATIMEF_STR_4yMMddHHmm = "yyyy年MM月dd日HH时mm分";

    private static DateFormat dateFormat = null;

    private static DateFormat dateTimeFormat = null;

    private static DateFormat zhcnDateFormat = null;

    private static DateFormat zhcnDateTimeFormat = null;
    public static final String DATEYEAR_DEFAULT_FORMAT = "yyyy";

    public static final String DATEMONTH_DEFAULT_FORMAT = "yyyy-MM";
    // 默认日期格式
    public static final String DATE_DEFAULT_FORMAT = "yyyy-MM-dd";

    // 默认时间格式
    public static final String DATETIME_DEFAULT_FORMAT = "yyyy-MM-dd HH:mm:ss";

    public static final String DATETIMEHOUR_DEFAULT_FORMAT = "yyyy-MM-dd HH:mm";

    public static final String TIME_DEFAULT_FORMAT = "HH:mm:ss";

    private static DateFormat dateYearFormat = null;
    private static DateFormat dateMonthFormat = null;

    private static DateFormat dateTimeHourFormat = null;

    private static DateFormat timeFormat = null;

    private static Calendar gregorianCalendar = null;
    static {
        dateFormat = new SimpleDateFormat(DATAFORMAT_STR);
        dateTimeFormat = new SimpleDateFormat(DATATIMEF_STR);
        zhcnDateFormat = new SimpleDateFormat(ZHCN_DATAFORMAT_STR);
        zhcnDateTimeFormat = new SimpleDateFormat(ZHCN_DATATIMEF_STR);
        dateYearFormat = new SimpleDateFormat(DATEYEAR_DEFAULT_FORMAT);
        dateMonthFormat = new SimpleDateFormat(DATEMONTH_DEFAULT_FORMAT);
        dateFormat = new SimpleDateFormat(DATE_DEFAULT_FORMAT);
        dateTimeFormat = new SimpleDateFormat(DATETIME_DEFAULT_FORMAT);
        dateTimeHourFormat = new SimpleDateFormat(DATETIMEHOUR_DEFAULT_FORMAT);
        timeFormat = new SimpleDateFormat(TIME_DEFAULT_FORMAT);
        gregorianCalendar = new GregorianCalendar();
    }

    private static DateFormat getDateFormat(String formatStr) {
        if (formatStr.equalsIgnoreCase(DATAFORMAT_STR)) {
            return dateFormat;
        } else if (formatStr.equalsIgnoreCase(DATATIMEF_STR)) {
            return dateTimeFormat;
        } else if (formatStr.equalsIgnoreCase(ZHCN_DATAFORMAT_STR)) {
            return zhcnDateFormat;
        } else if (formatStr.equalsIgnoreCase(ZHCN_DATATIMEF_STR)) {
            return zhcnDateTimeFormat;
        } else {
            return new SimpleDateFormat(formatStr);
        }
    }

    /**
     * 按照默认显示日期时间的格式"yyyy-MM-dd HH:mm:ss"，转化dateTimeStr为Date类型 dateTimeStr必须是"yyyy-MM-dd HH:mm:ss"的形式
     *
     * @param dateTimeStr
     * @return
     */
    public static Date getDate(String dateTimeStr) {
        return getDate(dateTimeStr, DATATIMEF_STR);
    }

    /**
     * 按照默认显示日期时间的格式"yyyy-MM-dd"，转化dateTimeStr为Date类型 dateTimeStr必须是"yyyy-MM-dd"的形式
     *
     * @param dateTimeStr
     * @return
     */
    public static Date getDateToFormatStr(String dateTimeStr, String formatStr) {
        return getDate(dateTimeStr, formatStr);
    }

    /**
     * 字符串转换成时间戳
     *
     * @param str
     * @return Timestamp
     */
    public static Timestamp getStrTimestamp(String str) {
        return Timestamp.valueOf(str);
    }

    /**
     * 按照默认formatStr的格式，转化dateTimeStr为Date类型 dateTimeStr必须是formatStr的形式
     *
     * @param dateTimeStr
     * @param formatStr
     * @return
     */
    public static Date getDate(String dateTimeStr, String formatStr) {
        try {
            if (dateTimeStr == null || dateTimeStr.equals("")) {
                return null;
            }
            DateFormat sdf = getDateFormat(formatStr);
            java.util.Date d = sdf.parse(dateTimeStr);
            return d;
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 将YYYYMMDD转换成Date日期
     *
     * @param date
     * @return
     * @throws
     */
    public static Date transferDate(String date) throws Exception {
        if (date == null || date.length() < 1)
            return null;

        if (date.length() != 8)
            throw new Exception("日期格式错误");
        String con = "-";

        String yyyy = date.substring(0, 4);
        String mm = date.substring(4, 6);
        String dd = date.substring(6, 8);

        int month = Integer.parseInt(mm);
        int day = Integer.parseInt(dd);
        if (month < 1 || month > 12 || day < 1 || day > 31)
            throw new Exception("日期格式错误");

        String str = yyyy + con + mm + con + dd;
        return DateUtil.getDate(str, DateUtil.DATAFORMAT_STR);
    }

    /**
     * 将Date转换成字符串“yyyy-mm-dd hh:mm:ss”的字符串
     *
     * @param date
     * @return
     */
    public static String dateToDateString(Date date) {
        return dateToDateString(date, DATATIMEF_STR);
    }

    /**
     * 将Date转换成formatStr格式的字符串
     *
     * @param date
     * @param formatStr
     * @return
     */
    public static String dateToDateString(Date date, String formatStr) {
        DateFormat df = getDateFormat(formatStr);
        return df.format(date);
    }

    /**
     * 返回一个yyyy-MM-dd HH:mm:ss 形式的日期时间字符串中的HH:mm:ss
     *
     * @param dateTime
     * @return
     */
    public static String getTimeString(String dateTime) {
        return getTimeString(dateTime, DATATIMEF_STR);
    }

    /**
     * 返回一个formatStr格式的日期时间字符串中的HH:mm:ss
     *
     * @param dateTime
     * @param formatStr
     * @return
     */
    public static String getTimeString(String dateTime, String formatStr) {
        Date d = getDate(dateTime, formatStr);
        String s = dateToDateString(d);
        return s.substring(DATATIMEF_STR.indexOf('H'));
    }

    /**
     * 获取当前日期yyyy-MM-dd的形式
     *
     * @return
     */
    public static String getCurDate() {
        // return dateToDateString(new Date(),DATAFORMAT_STR);
        return dateToDateString(Calendar.getInstance().getTime(), DATAFORMAT_STR);
    }

    /**
     * 获取当前日期yyyy年MM月dd日的形式
     *
     * @return
     */
    public static String getCurZhCNDate() {
        return dateToDateString(new Date(), ZHCN_DATAFORMAT_STR);
    }

    /**
     * 获取当前日期时间yyyy-MM-dd HH:mm:ss的形式
     *
     * @return
     */
    public static String getCurDateTime() {
        return dateToDateString(new Date(), DATATIMEF_STR);
    }

    /**
     * 获取当前日期时间yyyy年MM月dd日HH时mm分ss秒的形式
     *
     * @return
     */
    public static String getCurZhCNDateTime() {
        return dateToDateString(new Date(), ZHCN_DATATIMEF_STR);
    }

    /**
     *
     * @param time
     * @param style
     *            yyyy-MM-dd yyyy-MM-dd HH:mm:ss
     * @return
     */
    public static String formatDate(long time, String style) {
        Date date = new Date(time);
        SimpleDateFormat outFormat = new SimpleDateFormat(style);
        return outFormat.format(date);
    }

    /**
     *
     * @param date
     * @return
     */
    public static String formatDate(Date date) {
        if (date == null)
            return "";
        SimpleDateFormat outFormat = new SimpleDateFormat("yyyy-MM-dd");
        return outFormat.format(date);
    }

    /**
     * 获取日期d的days天后的一个Date
     *
     * @param d
     * @param days
     * @return
     */
    public static Date getInternalDateByDay(Date d, int days) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        now.add(Calendar.DATE, days);
        return now.getTime();
    }

    public static Date getInternalDateByMon(Date d, int months) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        now.add(Calendar.MONTH, months);
        return now.getTime();
    }

    public static Date getInternalDateByYear(Date d, int years) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        now.add(Calendar.YEAR, years);
        return now.getTime();
    }

    public static Date getInternalDateBySec(Date d, int sec) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        now.add(Calendar.SECOND, sec);
        return now.getTime();
    }

    public static Date getInternalDateByMin(Date d, int min) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        now.add(Calendar.MINUTE, min);
        return now.getTime();
    }

    public static Date getInternalDateByHour(Date d, int hours) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        now.add(Calendar.HOUR_OF_DAY, hours);
        return now.getTime();
    }

    /**
     * 根据一个日期字符串，返回日期格式，目前支持4种 如果都不是，则返回null
     *
     * @param DateString
     * @return
     */
    public static String getFormateStr(String DateString) {
        String patternStr1 = "[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}"; // "yyyy-MM-dd"
        String patternStr2 = "[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}\\s[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}"; // "yyyy-MM-dd HH:mm:ss";
        String patternStr3 = "[0-9]{4}年[0-9]{1,2}月[0-9]{1,2}日";// "yyyy年MM月dd日"
        String patternStr4 = "[0-9]{4}年[0-9]{1,2}月[0-9]{1,2}日[0-9]{1,2}时[0-9]{1,2}分[0-9]{1,2}秒";// "yyyy年MM月dd日HH时mm分ss秒"

        Pattern p = Pattern.compile(patternStr1);
        Matcher m = p.matcher(DateString);
        boolean b = m.matches();
        if (b)
            return DATAFORMAT_STR;
        p = Pattern.compile(patternStr2);
        m = p.matcher(DateString);
        b = m.matches();
        if (b)
            return DATATIMEF_STR;

        p = Pattern.compile(patternStr3);
        m = p.matcher(DateString);
        b = m.matches();
        if (b)
            return ZHCN_DATAFORMAT_STR;

        p = Pattern.compile(patternStr4);
        m = p.matcher(DateString);
        b = m.matches();
        if (b)
            return ZHCN_DATATIMEF_STR;
        return null;
    }

    /**
     * 将一个"yyyy-MM-dd HH:mm:ss"字符串，转换成"yyyy年MM月dd日HH时mm分ss秒"的字符串
     *
     * @param dateStr
     * @return
     */
    public static String getZhCNDateTime(String dateStr) {
        Date d = getDate(dateStr);
        return dateToDateString(d, ZHCN_DATATIMEF_STR);
    }

    /**
     * 将一个"yyyy-MM-dd"字符串，转换成"yyyy年MM月dd日"的字符串
     *
     * @param dateStr
     * @return
     */
    public static String getZhCNDate(String dateStr) {
        Date d = getDate(dateStr, DATAFORMAT_STR);
        return dateToDateString(d, ZHCN_DATAFORMAT_STR);
    }

    /**
     * 将dateStr从fmtFrom转换到fmtTo的格式
     *
     * @param dateStr
     * @param fmtFrom
     * @param fmtTo
     * @return
     */
    public static String getDateStr(String dateStr, String fmtFrom, String fmtTo) {
        Date d = getDate(dateStr, fmtFrom);
        return dateToDateString(d, fmtTo);
    }

    /**
     * 比较两个"yyyy-MM-dd HH:mm:ss"格式的日期，之间相差多少毫秒,time2-time1
     *
     * @param time1
     * @param time2
     * @return
     */
    public static long compareDateStr(String time1, String time2) {
        Date d1 = getDate(time1);
        Date d2 = getDate(time2);
        return d2.getTime() - d1.getTime();
    }

    /**
     * 将小时数换算成返回以毫秒为单位的时间
     *
     * @param hours
     * @return
     */
    public static long getMicroSec(BigDecimal hours) {
        BigDecimal bd;
        bd = hours.multiply(new BigDecimal(3600 * 1000));
        return bd.longValue();
    }

    /**
     * 获取Date中的分钟
     *
     * @param d
     * @return
     */
    public static int getMin(Date d) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        return now.get(Calendar.MINUTE);
    }

    /**
     * 获取Date中的小时(24小时)
     *
     * @param d
     * @return
     */
    public static int getHour(Date d) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        return now.get(Calendar.HOUR_OF_DAY);
    }

    /**
     * 获取Date中的秒
     *
     * @param d
     * @return
     */
    public static int getSecond(Date d) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        return now.get(Calendar.SECOND);
    }

    /**
     * 获取xxxx-xx-xx的日
     *
     * @param d
     * @return
     */
    public static int getDay(Date d) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        return now.get(Calendar.DAY_OF_MONTH);
    }

    /**
     * 获取月份，1-12月
     *
     * @param d
     * @return
     */
    public static int getMonth(Date d) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        return now.get(Calendar.MONTH) + 1;
    }

    /**
     * 获取19xx,20xx形式的年
     *
     * @param d
     * @return
     */
    public static int getYear(Date d) {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        now.setTime(d);
        return now.get(Calendar.YEAR);
    }

    /**
     * 得到d的上个月的年份+月份,如200505
     *
     * @return
     */
    public static String getYearMonthOfLastMon(Date d) {
        Date newdate = getInternalDateByMon(d, -1);
        String year = String.valueOf(getYear(newdate));
        String month = String.valueOf(getMonth(newdate));
        return year + month;
    }

    /**
     * 得到当前日期的年和月如200509
     *
     * @return String
     */
    public static String getCurYearMonth() {
        Calendar now = Calendar.getInstance(TimeZone.getDefault());
        String DATE_FORMAT = "yyyyMM";
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(DATE_FORMAT);
        sdf.setTimeZone(TimeZone.getDefault());
        return (sdf.format(now.getTime()));
    }

    public static Date getNextMonth(String year, String month) {
        String datestr = year + "-" + month + "-01";
        Date date = getDate(datestr, DATAFORMAT_STR);
        return getInternalDateByMon(date, 1);
    }

    public static Date getLastMonth(String year, String month) {
        String datestr = year + "-" + month + "-01";
        Date date = getDate(datestr, DATAFORMAT_STR);
        return getInternalDateByMon(date, -1);
    }

    /**
     * 得到日期d，按照页面日期控件格式，如"2001-3-16"
     *
     * @param d
     * @return
     */
    public static String getSingleNumDate(Date d) {
        return dateToDateString(d, DATAFORMAT_STR);
    }

    /**
     * 得到d半年前的日期,"yyyy-MM-dd"
     *
     * @param d
     * @return
     */
    public static String getHalfYearBeforeStr(Date d) {
        return dateToDateString(getInternalDateByMon(d, -6), DATAFORMAT_STR);
    }

    /**
     * 得到当前日期D的月底的前/后若干天的时间,<0表示之前，>0表示之后
     *
     * @param d
     * @param days
     * @return
     */
    public static String getInternalDateByLastDay(Date d, int days) {

        return dateToDateString(getInternalDateByDay(d, days), DATAFORMAT_STR);
    }

    /**
     * 日期中的年月日相加
     *
     * @param field
     *            int 需要加的字段 年 月 日
     * @param amount
     *            int 加多少
     * @return String
     */
    public static String addDate(int field, int amount) {
        int temp = 0;
        if (field == 1) {
            temp = Calendar.YEAR;
        }
        if (field == 2) {
            temp = Calendar.MONTH;
        }
        if (field == 3) {
            temp = Calendar.DATE;
        }

        String Time = "";
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Calendar cal = Calendar.getInstance(TimeZone.getDefault());
            cal.add(temp, amount);
            Time = sdf.format(cal.getTime());
            return Time;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    /**
     * 获得系统当前月份的天数
     *
     * @return
     */
    public static int getCurentMonthDay() {
        Date date = Calendar.getInstance().getTime();
        return getMonthDay(date);
    }

    /**
     * 获得指定日期月份的天数
     *
     * @return
     */
    public static int getMonthDay(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.getActualMaximum(Calendar.DAY_OF_MONTH);

    }

    /**
     * 获得指定日期月份的天数 yyyy-mm-dd
     *
     * @return
     */
    public static int getMonthDay(String date) {
        Date strDate = getDate(date, DATAFORMAT_STR);
        return getMonthDay(strDate);

    }

    public static String getStringDate(Calendar cal) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        return format.format(cal.getTime());
    }

    /**
     *
     * @Description: 获取两个日期格式为：yyyy-MM-dd的日期的天数之差
     * @param @param
     *            cal
     * @param @return
     * @return String
     */
    public static int reductDate(String time_1, String time_2) {

        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Long reductTime = 0l;
        try {
            reductTime = sf.parse(time_2).getTime() - sf.parse(time_1).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return (int) (reductTime / 1000 / 60 / 60 / 24);
    }

    /**
     * @Description: 获取两个日期格式为：yyyy-MM-dd的日期的周数之差
     * @param
     * @param
     * @return
     */
    public static int reductWeek(String time_1, String time_2) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date startDate = null;
        Date endDate = null;
        try {
            startDate = format.parse(time_1);
            endDate = format.parse(time_2);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (startDate == null || endDate == null)
            return 0;

        Calendar cal = Calendar.getInstance();
        cal.setTime(startDate);
        long time1 = cal.getTimeInMillis();
        cal.setTime(endDate);
        long time2 = cal.getTimeInMillis();
        long between_days = (time2 - time1) / (1000 * 3600 * 24);
        Double days = Double.parseDouble(String.valueOf(between_days));
        if ((days / 7) > 0 && (days / 7) <= 1) {
            // 不满一周的按一周算
            return 1;
        } else if (days / 7 > 1) {
            int day = days.intValue();
            if (day % 7 > 0) {
                return day / 7 + 1;
            } else {
                return day / 7;
            }
        } else if ((days / 7) == 0) {
            return 0;
        } else {
            // 负数返还null
            return 0;
        }
    }

    /**
     * 获取两个日期相差几个月
     *
     * @param
     * @param
     * @return
     */
    public static int reductMonth(String time_1, String time_2) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date startDate = null;
        Date endDate = null;
        try {
            startDate = format.parse(time_1);
            endDate = format.parse(time_2);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (startDate == null || endDate == null)
            return 0;

        Calendar startCalendar = Calendar.getInstance();
        startCalendar.setTime(startDate);
        Calendar endCalendar = Calendar.getInstance();
        endCalendar.setTime(endDate);
        Calendar temp = Calendar.getInstance();
        temp.setTime(endDate);
        temp.add(Calendar.DATE, 1);

        int year = endCalendar.get(Calendar.YEAR) - startCalendar.get(Calendar.YEAR);
        int month = endCalendar.get(Calendar.MONTH) - startCalendar.get(Calendar.MONTH);

        if ((startCalendar.get(Calendar.DATE) == 1) && (temp.get(Calendar.DATE) == 1)) {
            return year * 12 + month + 1;
        } else if ((startCalendar.get(Calendar.DATE) != 1) && (temp.get(Calendar.DATE) == 1)) {
            return year * 12 + month;
        } else if ((startCalendar.get(Calendar.DATE) == 1) && (temp.get(Calendar.DATE) != 1)) {
            return year * 12 + month;
        } else {
            return (year * 12 + month - 1) < 0 ? 0 : (year * 12 + month);
        }
    }

    // 计算两个日期相差年数
    public static int reductYear(String time_1, String time_2) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date startDate = null;
        Date endDate = null;
        try {
            startDate = format.parse(time_1);
            endDate = format.parse(time_2);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (startDate == null || endDate == null)
            return 0;

        Calendar calBegin = Calendar.getInstance(); // 获取日历实例
        Calendar calEnd = Calendar.getInstance();
        calBegin.setTime(startDate); // 字符串按照指定格式转化为日期
        calEnd.setTime(endDate);
        return calEnd.get(Calendar.YEAR) - calBegin.get(Calendar.YEAR);
    }

    /**
     * 比较两个日期的大小
     * @param DATE1
     * @param DATE2
     * @return
     */
    public static int compareDate(String DATE1, String DATE2) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date dt1 = df.parse(DATE1);
            Date dt2 = df.parse(DATE2);
            if (dt1.getTime() > dt2.getTime()) {
                return 1;
            } else if (dt1.getTime() < dt2.getTime()) {
                return -1;
            } else {
                return 0;
            }
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return 0;
    }

    public static Long getEndTime() throws ParseException {
        DateFormat df = new SimpleDateFormat("yyy-MM-dd HH:mm:ss");
        Date d = df.parse(LocalDate.now()+" 23:59:59");
        long now = System.currentTimeMillis();
        long time = d.getTime() - now;
        return time;
    }

    /**
     * 获取当前日期星期一日期【本周一】
     *
     * @return date
     */
    public static Date getFirstDayOfWeek() {
        gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
        gregorianCalendar.setTime(new Date());
        gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek()); // Monday
        return gregorianCalendar.getTime();
    }

    /**
     * 获取当前日期星期日日期【本周日】
     *
     * @return date
     */
    public static Date getLastDayOfWeek() {
        gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
        gregorianCalendar.setTime(new Date());
        gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek() + 6); // Monday
        return gregorianCalendar.getTime();
    }

    /**
     * 获取指定日期的星期一日期
     *
     * @param
     * @return date
     */
    public static Date getFirstDayOfWeek(Date date) {
        if (date == null) {
            return null;
        }
        gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
        gregorianCalendar.setTime(date);
        gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek()); // Monday
        return gregorianCalendar.getTime();
    }

    /**
     * 获取日期星期一日期
     *
     * @param
     * @return date
     */
    public static Date getLastDayOfWeek(Date date) {
        if (date == null) {
            return null;
        }
        gregorianCalendar.setFirstDayOfWeek(Calendar.MONDAY);
        gregorianCalendar.setTime(date);
        gregorianCalendar.set(Calendar.DAY_OF_WEEK, gregorianCalendar.getFirstDayOfWeek() + 6); // Monday
        return gregorianCalendar.getTime();
    }

    /**
     * 获取当前月的第一天
     *
     * @return date
     */
    public static Date getFirstDayOfMonth() {
        gregorianCalendar.setTime(new Date());
        gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
        return gregorianCalendar.getTime();
    }

    /**
     * 获取当前月的最后一天
     *
     * @return
     */
    public static Date getLastDayOfMonth() {
        gregorianCalendar.setTime(new Date());
        gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
        gregorianCalendar.add(Calendar.MONTH, 1);
        gregorianCalendar.add(Calendar.DAY_OF_MONTH, -1);
        return gregorianCalendar.getTime();
    }

    /**
     * 获取指定月的第一天
     *
     * @param date
     * @return
     */
    public static Date getFirstDayOfMonth(Date date) {
        gregorianCalendar.setTime(date);
        gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
        return gregorianCalendar.getTime();
    }

    /**
     * 获取指定月的最后一天
     *
     * @param date
     * @return
     */
    public static Date getLastDayOfMonth(Date date) {
        gregorianCalendar.setTime(date);
        gregorianCalendar.set(Calendar.DAY_OF_MONTH, 1);
        gregorianCalendar.add(Calendar.MONTH, 1);
        gregorianCalendar.add(Calendar.DAY_OF_MONTH, -1);
        return gregorianCalendar.getTime();
    }

    /**
     * 指定日期提前几分钟后的日期
     *
     * @param day
     *            yyyy-MM-dd HH:mm:ss
     * @param x
     * @return
     */
    public static String getLastDateMinut(String day, int x) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.MINUTE, -x);// 24小时制
        date = cal.getTime();
        // System.out.println("after:" + format.format(date));
        cal = null;
        return format.format(date);

    }

    /**
     * 指定日期提前几天后的日期
     *
     * @param day
     *            yyyy-MM-dd
     * @param x
     * @return
     */
    public static String getLastDateDay(String day, int x) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, -x);// 24小时制
        date = cal.getTime();
        // System.out.println("after:" + format.format(date));
        cal = null;
        return format.format(date);

    }

    /**
     * 指定日期加x年
     *
     * @param day
     * @param x
     * @return
     */
    public static String addYear(String day, int x) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.YEAR, x);
        date = cal.getTime();
        // System.out.println("after:" + format.format(date));
        cal = null;
        return format.format(date);
    }

    /**
     * 获取指定日期的下一天
     *
     * @param day
     * @return
     */
    public static String nextDay(String day) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DATE, 1);
        date = calendar.getTime();
        return format.format(date);
    }

    /**
     * 获取指定日期的下n天
     *
     * @param day
     * @return
     */
    public static String nextDay(String day, int n) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DATE, 1 * n);
        date = calendar.getTime();
        return format.format(date);
    }

    /**
     * 获取指定日期的下一周
     *
     * @param day
     * @return
     */
    public static String nextWeek(String day) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DATE, 7);
        date = calendar.getTime();
        return format.format(date);
    }

    /**
     * 获取指定日期的下n周
     *
     * @param day
     * @return
     */
    public static String nextWeek(String day, int n) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DATE, 7 * n);
        date = calendar.getTime();
        return format.format(date);
    }

    /**
     * 获取指定日期的下一月
     *
     * @param day
     * @return
     */
    public static String nextMonth(String day) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MONTH, 1);
        date = calendar.getTime();
        return format.format(date);
    }

    /**
     * 获取指定日期的下n月
     *
     * @param day
     * @return
     */
    public static String nextMonth(String day, int n) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.MONTH, 1 * n);
        date = calendar.getTime();
        return format.format(date);
    }

    /**
     * 获取指定日期的下一年
     *
     * @param day
     * @return
     */
    public static String nextYear(String day) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.YEAR, 1);
        date = calendar.getTime();
        return format.format(date);
    }

    /**
     * 获取指定日期的下n年
     *
     * @param day
     * @return
     */
    public static String nextYear(String day, int n) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制
        Date date = null;
        try {
            date = format.parse(day);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        if (date == null)
            return "";
        // System.out.println("front:" + format.format(date));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.YEAR, 1 * n);
        date = calendar.getTime();
        return format.format(date);
    }

    /**
     * 获取当前日期n月第一天
     *
     * @param
     * @return
     */
    public static String getFirstDay(int n) {

        Calendar cale = null;
        SimpleDateFormat format = new SimpleDateFormat(DATATIMEF_STR);
        String firstday = "";

        cale = Calendar.getInstance();
        cale.add(Calendar.MONTH, n);
        cale.set(Calendar.DAY_OF_MONTH, 1);
        firstday = format.format(cale.getTime());
        return firstday;

    }

    /**
     * 获取当前日期n月最后一天
     *
     * @param
     * @return
     */
    public static String getLastDay(int n) {

        Calendar cale = null;
        SimpleDateFormat format = new SimpleDateFormat(DATATIMEF_STR);
        String lastday = "";

        cale = Calendar.getInstance();
        cale.add(Calendar.MONTH, 1 + n);
        cale.set(Calendar.DAY_OF_MONTH, 0);
        lastday = format.format(cale.getTime());
        return lastday;
    }

    /**
     * 获取某年的第几周的开始日期
     *
     * @param year
     * @param week
     * @return
     */
    public static Date getFirstDayOfWeek(int year, int week) {
        Calendar c = new GregorianCalendar();
        c.set(Calendar.YEAR, year);
        c.set(Calendar.MONTH, Calendar.JANUARY);
        c.set(Calendar.DATE, 1);

        Calendar cal = (GregorianCalendar) c.clone();
        cal.add(Calendar.DATE, (week - 1) * 7);

        return getFirstDayOfWeek(cal.getTime());
    }

    /**
     * 获取某年的第几周的结束日期
     *
     * @param year
     * @param week
     * @return
     */
    public static Date getLastDayOfWeek(int year, int week) {
        Calendar c = new GregorianCalendar();
        c.set(Calendar.YEAR, year);
        c.set(Calendar.MONTH, Calendar.JANUARY);
        c.set(Calendar.DATE, 1);

        Calendar cal = (GregorianCalendar) c.clone();
        cal.add(Calendar.DATE, (week - 1) * 7);

        return getLastDayOfWeek(cal.getTime());
    }

    /**
     * 获取当前时间所在年的第几周
     *
     * @param date
     * @return
     */
    public static int getWeekOfYear(Date date) {
        Calendar c = new GregorianCalendar();
        c.setFirstDayOfWeek(Calendar.MONDAY);
        c.setMinimalDaysInFirstWeek(7);
        c.setTime(date);
        return c.get(Calendar.WEEK_OF_YEAR);
    }

    /**
     * 获取某一年有多少周
     *
     * @param year
     * @return
     */
    public static int getMaxWeekNumOfYear(int year) {
        Calendar c = new GregorianCalendar();
        c.set(year, Calendar.DECEMBER, 31, 23, 59, 59);
        return getWeekOfYear(c.getTime());
    }

    /**
     * 判断时间是否在时间段内
     *
     * @param nowTime
     * @param beginTime
     * @param endTime
     * @return
     */
    public static boolean belongCalendar(String nowTime, String beginTime, String endTime) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");// 24小时制

        boolean belong = false;
        try {
            // 设置当前时间
            Calendar date = Calendar.getInstance();

            date.setTime(format.parse(nowTime));

            // 设置开始时间
            Calendar begin = Calendar.getInstance();
            begin.setTime(format.parse(beginTime));
            // 设置结束时间
            Calendar end = Calendar.getInstance();
            end.setTime(format.parse(endTime));

            // 处于开始时间之后，和结束时间之前的判断
            if (date.after(begin) && date.before(end)) {
                belong = true;
            } else {
                belong = false;
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return belong;
    }

    public static void main(String[] args) throws ParseException {
        // Date BeginTime = DateUtil.getDate(DateUtil.getFirstDay(-1));
        // Date EndTime = DateUtil.getDate(DateUtil.getLastDay(1));
        // System.out.println("BeginTime>>"+BeginTime);
        // System.out.println("EndTime>>"+EndTime);

		/*Date date = DateUtil.getDateToFormatStr(DateUtil.dateToDateString(new Date(), DateUtil.DATE_DEFAULT_FORMAT), DateUtil.DATAFORMAT_STR);
		Date endDate = DateUtil.getDateToFormatStr(DateUtil.dateToDateString(getDate("2018-05-31 00:00:00"), DateUtil.DATE_DEFAULT_FORMAT), DateUtil.DATAFORMAT_STR);
		System.out.println("date>>" + date);
		System.out.println("endDate>>" + endDate);
		System.out.println(date.compareTo(endDate) > 0);*/
//		System.out.println(compareDate("2018-10-03","2018-10-02"));
//		System.out.println(reductDate("2018-10-01 00:00:00","2018-10-31 23:59:59"));

        System.out.println(LocalDate.now());
        System.out.println(LocalTime.MAX);
        System.out.println(getEndTime()/1000);
        System.out.println(dateToDateString(new Date(),"yyyy-MM-dd"));
    }

}