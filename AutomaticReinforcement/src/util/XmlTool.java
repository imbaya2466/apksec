package util;


import org.dom4j.*;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class XmlTool {

    public  static  void changeAttribute(String filepath,String here,String att,String value)
    {

        File file = new File(filepath);

        SAXReader reader = new SAXReader();
        try {
            Document doc = reader.read(file);

            //获取指定节点
            Element node = (Element) doc.selectSingleNode(here);
            //获取属性
            Attribute attribute = node.attribute(att);
            //设置属性值
            attribute.setValue(value);
            //格式化为缩进格式
            OutputFormat format = OutputFormat.createPrettyPrint();
            //设置编码格式
            format.setEncoding("UTF-8");
            try {
                XMLWriter writer = new XMLWriter(new FileWriter(file),format);
                //写入数据
                writer.write(doc);
                writer.close();
            } catch (IOException e) {
                e.printStackTrace();
            }




        } catch (DocumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
