
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `sp_proxy`;
CREATE TABLE `sp_proxy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) NOT NULL,
  `port` int(6) NOT NULL,
  `type` varchar(16) DEFAULT NULL,
  `anonymous` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `valid_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sp_proxy_unique` (`ip`,`port`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

INSERT INTO `sp_flow` VALUES ('41437e699ef54b72969f1631c2e317b6', '测试IP代理池', '<mxGraphModel>\n  <root>\n    <mxCell id=\"0\">\n      <JsonProperty as=\"data\">\n        {&quot;spiderName&quot;:&quot;测试IP代理池&quot;,&quot;threadCount&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"1\" parent=\"0\"/>\n    <mxCell id=\"2\" value=\"开始\" style=\"start\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"80\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;shape&quot;:&quot;start&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"3\" value=\"定义变量\" style=\"variable\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"180\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;定义变量&quot;,&quot;loopVariableName&quot;:&quot;a&quot;,&quot;variable-name&quot;:[&quot;proxy&quot;],&quot;loopCount&quot;:&quot;10&quot;,&quot;variable-value&quot;:[&quot;${proxypool.http()}&quot;],&quot;shape&quot;:&quot;variable&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"4\" value=\"\" parent=\"1\" source=\"2\" target=\"3\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"5\" value=\"开始抓取\" style=\"request\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"290\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;开始抓取&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;sleep&quot;:&quot;&quot;,&quot;timeout&quot;:&quot;&quot;,&quot;response-charset&quot;:&quot;&quot;,&quot;method&quot;:&quot;GET&quot;,&quot;body-type&quot;:&quot;none&quot;,&quot;body-content-type&quot;:&quot;text/plain&quot;,&quot;loopCount&quot;:&quot;&quot;,&quot;url&quot;:&quot;https://ip.cn/&quot;,&quot;proxy&quot;:&quot;${proxy}&quot;,&quot;request-body&quot;:[&quot;&quot;],&quot;follow-redirect&quot;:&quot;1&quot;,&quot;shape&quot;:&quot;request&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"6\" value=\"\" parent=\"1\" source=\"3\" target=\"5\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"7\" value=\"输出\" style=\"output\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"380\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;输出&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;output-name&quot;:[&quot;代理&quot;,&quot;ip&quot;],&quot;loopCount&quot;:&quot;&quot;,&quot;output-value&quot;:[&quot;${proxy}&quot;,&quot;${resp.regx(&#39;您现在的 IP：&lt;code&gt;(.*?)&lt;/code&gt;&#39;)}&quot;],&quot;shape&quot;:&quot;output&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"8\" value=\"\" parent=\"1\" source=\"5\" target=\"7\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n  </root>\n</mxGraphModel>\n', null, '0', '2019-01-01 00:00:00', null, null, null);
INSERT INTO `sp_flow` VALUES ('28682345d808456fa305c5c09653d6fc', '89IP', '<mxGraphModel>\n  <root>\n    <mxCell id=\"0\">\n      <JsonProperty as=\"data\">\n        {&quot;spiderName&quot;:&quot;89IP&quot;,&quot;threadCount&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"1\" parent=\"0\"/>\n    <mxCell id=\"2\" value=\"开始\" style=\"start\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"80\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;shape&quot;:&quot;start&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"3\" value=\"开始抓取\" style=\"request\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"204\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;开始抓取&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;sleep&quot;:&quot;&quot;,&quot;timeout&quot;:&quot;&quot;,&quot;response-charset&quot;:&quot;&quot;,&quot;method&quot;:&quot;GET&quot;,&quot;body-type&quot;:&quot;none&quot;,&quot;body-content-type&quot;:&quot;text/plain&quot;,&quot;loopCount&quot;:&quot;&quot;,&quot;url&quot;:&quot;http://www.89ip.cn/tqdl.html?num=300&amp;address=&amp;kill_address=&amp;port=&amp;kill_port=&amp;isp=&quot;,&quot;proxy&quot;:&quot;&quot;,&quot;request-body&quot;:[&quot;&quot;],&quot;follow-redirect&quot;:&quot;1&quot;,&quot;shape&quot;:&quot;request&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"4\" value=\"\" parent=\"1\" source=\"2\" target=\"3\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"5\" value=\"提取所有代理\" style=\"variable\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"330\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;提取所有代理&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;variable-name&quot;:[&quot;ipList&quot;],&quot;loopCount&quot;:&quot;&quot;,&quot;variable-value&quot;:[&quot;${resp.selector(&#39;.fly-panel:eq(0) div&#39;).html()}&quot;],&quot;shape&quot;:&quot;variable&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"6\" value=\"\" parent=\"1\" source=\"3\" target=\"5\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"7\" value=\"分割成List\" style=\"variable\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"460\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;分割成List&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;variable-name&quot;:[&quot;ips&quot;],&quot;loopCount&quot;:&quot;&quot;,&quot;variable-value&quot;:[&quot;${string.split(ipList,&#39;&lt;br&gt;&#39;)}&quot;],&quot;shape&quot;:&quot;variable&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"8\" value=\"\" parent=\"1\" source=\"5\" target=\"7\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"9\" value=\"分割IP:PORT\" style=\"variable\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"562\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;分割IP:PORT&quot;,&quot;loopVariableName&quot;:&quot;index&quot;,&quot;variable-name&quot;:[&quot;ipport&quot;],&quot;loopCount&quot;:&quot;${list.length(ips)}&quot;,&quot;variable-value&quot;:[&quot;${ips[index].trim().split(\\&quot;:\\&quot;)}&quot;],&quot;shape&quot;:&quot;variable&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"11\" value=\"\" parent=\"1\" source=\"7\" target=\"9\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"12\" value=\"取出IP和端口号\" style=\"variable\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"670\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;取出IP和端口号&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;variable-name&quot;:[&quot;ip&quot;,&quot;port&quot;],&quot;loopCount&quot;:&quot;&quot;,&quot;variable-value&quot;:[&quot;${ipport[0]}&quot;,&quot;${ipport[1]}&quot;],&quot;shape&quot;:&quot;variable&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"13\" value=\"\" parent=\"1\" source=\"9\" target=\"12\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"14\" value=\"保存\" style=\"function\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"780\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;保存&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;loopCount&quot;:&quot;&quot;,&quot;function&quot;:&quot;${proxypool.add(ip,port.toInt(),&#39;http&#39;,true)}&quot;,&quot;shape&quot;:&quot;function&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"15\" value=\"\" parent=\"1\" source=\"12\" target=\"14\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n  </root>\n</mxGraphModel>\n', null, '0', '2019-01-01 00:00:00', null, null, null);
INSERT INTO `sp_flow` VALUES ('0f06cf22cf5544e087d95b9c9769d69a', '西刺代理', '<mxGraphModel>\n  <root>\n    <mxCell id=\"0\">\n      <JsonProperty as=\"data\">\n        {&quot;spiderName&quot;:&quot;西刺代理&quot;,&quot;threadCount&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"1\" parent=\"0\"/>\n    <mxCell id=\"2\" value=\"开始\" style=\"start\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"80\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;shape&quot;:&quot;start&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"3\" value=\"开始抓取\" style=\"request\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"140\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;开始抓取&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;sleep&quot;:&quot;&quot;,&quot;timeout&quot;:&quot;&quot;,&quot;response-charset&quot;:&quot;&quot;,&quot;method&quot;:&quot;GET&quot;,&quot;body-type&quot;:&quot;none&quot;,&quot;body-content-type&quot;:&quot;text/plain&quot;,&quot;loopCount&quot;:&quot;&quot;,&quot;url&quot;:&quot;https://www.xicidaili.com/nn/&quot;,&quot;proxy&quot;:&quot;&quot;,&quot;request-body&quot;:[&quot;&quot;],&quot;follow-redirect&quot;:&quot;1&quot;,&quot;shape&quot;:&quot;request&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"4\" value=\"\" parent=\"1\" source=\"2\" target=\"3\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"5\" value=\"读取表格\" style=\"variable\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"230\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;读取表格&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;variable-name&quot;:[&quot;trs&quot;],&quot;loopCount&quot;:&quot;&quot;,&quot;variable-value&quot;:[&quot;${resp.selectors(&#39;table[id=ip_list] tr[class]&#39;)}&quot;],&quot;shape&quot;:&quot;variable&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"6\" value=\"\" parent=\"1\" source=\"3\" target=\"5\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"23\" value=\"读取单元格\" style=\"variable\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"320\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;读取单元格&quot;,&quot;loopVariableName&quot;:&quot;index&quot;,&quot;variable-name&quot;:[&quot;ip&quot;,&quot;port&quot;,&quot;type&quot;,&quot;anonymous&quot;],&quot;loopCount&quot;:&quot;${list.length(trs)}&quot;,&quot;variable-value&quot;:[&quot;${trs[index].selector(&#39;td:eq(1)&#39;).text()}&quot;,&quot;${trs[index].selector(&#39;td:eq(2)&#39;).text()}&quot;,&quot;${trs[index].selector(&#39;td:eq(5)&#39;).text()}&quot;,&quot;${trs[index].selector(&#39;td:eq(4)&#39;).text()}&quot;],&quot;shape&quot;:&quot;variable&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"24\" value=\"\" parent=\"1\" source=\"5\" target=\"23\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"26\" value=\"保存\" style=\"function\" parent=\"1\" vertex=\"1\">\n      <mxGeometry x=\"420\" y=\"80\" width=\"24\" height=\"24\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;保存&quot;,&quot;loopVariableName&quot;:&quot;&quot;,&quot;loopCount&quot;:&quot;&quot;,&quot;function&quot;:&quot;${proxypool.add(ip,port.toInt(),type,string.equals(anonymous,&#39;高匿&#39;))}&quot;,&quot;shape&quot;:&quot;function&quot;}\n      </JsonProperty>\n    </mxCell>\n    <mxCell id=\"27\" value=\"\" parent=\"1\" source=\"23\" target=\"26\" edge=\"1\">\n      <mxGeometry relative=\"1\" as=\"geometry\"/>\n      <JsonProperty as=\"data\">\n        {&quot;value&quot;:&quot;&quot;,&quot;condition&quot;:&quot;&quot;}\n      </JsonProperty>\n    </mxCell>\n  </root>\n</mxGraphModel>\n', null, '0', '2019-01-01 00:00:00', null, null, null);

ALTER TABLE `sp_proxy`
CHANGE COLUMN `anonymous` `anonymous` TINYINT(1) NULL DEFAULT 0 ;
