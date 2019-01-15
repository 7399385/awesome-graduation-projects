<%@ page language="java" contentType="text/html; charset=GBK"%>  
<%@ page import = "javax.servlet.*" %>
<%@ page import="com.javareport.beans.*"%>  
<%@ page extends="com.javareport.http.WebReportEngine"%>  
<%!  
    public Report createReport(HttpServletRequest request) throws Exception{  
        //ͼƬ��������  
        int[] chartType = new int[]{  
         Chart.CHART_PIE3D//Chart.CHART_STACKBAR3D,  
        // Chart.CHART_CURVE,Chart.CHART_LINE,  
         //Chart.CHART_POINT,Chart.CHART_INVERTED_CURVE,  
        // Chart.CHART_INVERTED_LINE,Chart.CHART_INVERTED_STACKBAR  
        };  
        //��Ԫ���ݵ���ʾ��ǩ�ַ�����  
        String[] labels = new String[]{"����һ��", "��������", "����һ��", "��������"};  
        //ʵ�����������  
        Report report = new Report();  
        //��ҳü������ı���Ϣ����  
        report.addHeaderText("����ŷ���������������");  
        //�ڱ�����ҳü���һ������  
        report.addHeaderSeparator(1);  
        //��ҳβ���һ��ֱ��  
        report.addFooterSeparator(1);  
        //��ҳβ����ı���Ϣ����  
        //report.addFooterText("��{P}ҳ�� ��{N}ҳ");  
        //ѭ������������͵�ͼƬ  
        for(int i=0;i<chartType.length;i++){  
            try{  
                //ʵ����һ��ͼ�����  
                Chart chart = new Chart((Number[][])getData(request));  
                //����ͼ���еĵ�Ԫ���ݵ���ʾ�ı�ǩ  
                chart.setLabels(labels);  
                //����ͳ��ͼ������  
                chart.setStyle(chartType[i]);  
                //����ͳ��ͼ����ʾ��ʱ��Ѿ������ֵҲ��ʾ����  
                chart.setShowValue(true);  
                //�ڱ���������ı���Ϣ����  
                report.addText("�����г����ı���ͳ��ͼ��"+i+"���� ");  
                //�ڱ��������ͼ����Ϣ����  
                report.addChart(chart);  
                //�ڱ�������ӻ��з���  
                report.addBreak();  
                report.addBreak();  
                report.addBreak();  
            }  
            catch(Exception e){  
                e.printStackTrace();  
            }  
        }  
        return report;  
    }  
  
    //���߿ɸ�����Ҫ���������ֵ��������ݿ���ȡ��ֵ�����������Զ�̬��ʾ����  
    public Double[][] getData(HttpServletRequest request){  
        Double[][] data = new Double[1][4];  
        data[0][0] = new Double(50);  
        data[0][1] = new Double(50);  
        data[0][2] = new Double(35);  
        data[0][3] = new Double(55);  
        return data;  
    }  
  
    //����Web������ҳ���ײ���ʾ�Ĺ�����Ϊ��׼����ʽ������һ�������ء���ť�����ص���ҳ  
   /*  public String getToolbarScript(HttpServletRequest request){  
        return "<a href=\"webChart.jsp\"><img src=\""+request.getRequestURI()+  
                "?op=Resource&name=/resource/back.gif\" border=\"0\" alt=\"����\"></a>";  
    }   */
%> 