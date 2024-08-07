-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'szo','rlz itd mxj edp uqz xsb xef zpa ecc srp','walterhsieh'),(2,1,'iby','xcu nzy fxa ybu nfy tfv ylu asy eku dnm','walterhsieh'),(3,1,'xvw','jsx tpm ojz tle omr drv gnf ztj wux hpb','walterhsieh'),(4,1,'ksn','unu wqe ezl ezi pxz ivj fbm psl ezm jwu','walterhsieh'),(5,1,'liy','zkh opn sfn dvq seq myu oju kbw xqm dkv','walterhsieh'),(6,1,'mde','kiy equ gzg fvh uje afy zch tgc plz hgu','walterhsieh'),(7,1,'unx','zjf gze wrc gkh ihm lqw jaj tlu jid uck','walterhsieh'),(8,1,'uav','ymt ptr gws ioi mjq nzk akd lno vht jdu','walterhsieh'),(9,1,'thx','omo vft vrb dnc kus zmb dca day ssd ssy','walterhsieh'),(10,1,'psp','xaa zjr mmf crj kme tue sel ktc byx vdz','walterhsieh'),(11,1,'nnv','fxp vma tpy zbd iat sav sse zec jfd pyo','walterhsieh'),(12,1,'gsc','iur hbd lwk anl upx cuk viy bum ghu gfh','walterhsieh'),(13,1,'nax','udp gxx uas sox iza das vbr vao jzm wqv','walterhsieh'),(14,1,'crc','jkj bin mbm kxe smp zod tbx ngi xoe dki','walterhsieh'),(15,1,'ldd','mxf tww pvi iwv qpo vso qrs fwr sho hle','walterhsieh'),(16,1,'inr','xwy hum utj znl lwx ztg rcn ivc yqy ryb','walterhsieh'),(17,1,'xcy','znb rld zed rzu xnc avk gqz ljf nvv dch','walterhsieh'),(18,1,'hgz','bct tge yqr tlg vfo gti rtr oqr hqp qxn','walterhsieh'),(19,1,'ahw','rhu zgp owq roo hnj jhj rvj epw bro pho','walterhsieh'),(20,1,'zyb','okz cdg dsq wyz ecc naa woy ilv tct mip','walterhsieh'),(21,1,'qnw','sic log wjd qmx cxw fxb tep xvp iud pxt','walterhsieh'),(22,1,'qeq','zrb xnz thg vkt yjx kds ibn opw wfe xox','walterhsieh'),(23,1,'qeb','uzy anp nrs qdn kxw pqz mse uzy tcl eid','walterhsieh'),(24,1,'ayt','zzo jvc ukc zws wzj ytc mgh uop sje ahx','walterhsieh'),(25,1,'rti','nbj urs lgh yfw xii wlm zfi fug jew zym','walterhsieh'),(26,1,'lfm','agi gpp kbb pvq ufn lwd ltr rtc tth sbj','walterhsieh'),(27,1,'cld','ckk gow lon xcq vyl kjg qlk teu mtk row','walterhsieh'),(28,1,'scf','emy fxe efh xiu urs ljp mqs jzx jjr xcn','walterhsieh'),(29,1,'szr','mrq czz rct mhn scv onh tij eim dgw sba','walterhsieh'),(30,1,'xdi','gxy dnu sei oek kym ebh fdw yfi rzr vau','walterhsieh'),(31,2,'phw','pkz yqj gxb gij rer osk nka xyo wzt rsf','tsaiYing'),(32,2,'bmg','kjr ati dwq uun ows jhc gcr pgd utu oee','tsaiYing'),(33,2,'srd','ueo quz kna gml rxy ies qsn mud ekl fxo','tsaiYing'),(34,2,'jit','osl yae tnf fsq ndv ynh eqo oob pys lxq','tsaiYing'),(35,2,'lqg','lcd aqp cea fcn ich qdp foi bpu mwm pzw','tsaiYing'),(36,2,'bgu','fpa mqq gci yvn tyr ouy gzl ipa fen obg','tsaiYing'),(37,2,'mtv','fsl gil dqb crz aus mnq pen nnm rgv mru','tsaiYing'),(38,2,'rqt','ynn qmq syf zpk fil ptw aef def yan bmi','tsaiYing'),(39,2,'wjf','bjo qfu ihj mzk qmj ite nsu mcn zoc bzz','tsaiYing'),(40,2,'qvu','aoq kxl sfl dbh gyg ckz ojw hed mcp aau','tsaiYing'),(41,2,'jls','xje rqg lym twj szd die qro lth jej umu','tsaiYing'),(42,2,'yrw','uwh fhi bah hbd wje fbq asl cpo ouz wkv','tsaiYing'),(43,2,'kft','yqg ejt oll nkl kxi twi wms vpf gua rii','tsaiYing'),(44,2,'thh','neh cax uma hzi cna vxe icw eov pno hbb','tsaiYing'),(45,2,'rut','xnb cfp yqh mdh ofr fdk abv oyg hea six','tsaiYing'),(46,2,'hqq','oht qol hee qqu tyg nzc olh gef nyx xpy','tsaiYing'),(47,2,'amh','awf rqm riu lgo agp ire hid vqo xbs kfa','tsaiYing'),(48,2,'lev','aam ogk qrw red mya bcp cje ksj tdn avm','tsaiYing'),(49,2,'kzz','ttu wxl tmb mrl bgh mdf que jtm yuo kxm','tsaiYing'),(50,2,'vxr','djk vyx usp uqc vws jlp jlv tcf bbd ltc','tsaiYing'),(51,2,'rli','pcc zak ivu dia vrn rtr tur qxh acd rfq','tsaiYing'),(52,2,'tkc','mah vmi stt wmp uho xch hfe xgl ysp ifo','tsaiYing'),(53,2,'ypp','aru mjz hqm uyp zrn mih tju hva hgg frg','tsaiYing'),(54,2,'nqf','ltm rvd vyr gdg cic jhc glc qxl cbo jjd','tsaiYing'),(55,2,'vrn','sva kwx tfc jfg tsn kna qdh jky ydl veg','tsaiYing'),(56,2,'pjo','ckj svt zfm aro ibo hwv gjh vch spy hnj','tsaiYing'),(57,2,'mbo','leb aml ydb zzv vaa qqi tbl uja jqj ams','tsaiYing'),(58,2,'zsm','cqr mts xql yrk pmy zga ntt wnr vex oyn','tsaiYing'),(59,2,'dnb','nfl yni lip ffj vgb yfn scg avh uqx ugt','tsaiYing'),(60,2,'nlj','rwd mlo uyw ite wht aec vnl hrg cnp uob','tsaiYing'),(61,3,'qao','ojv xtq qzm omm gpo xym azw dwu jmz qbq','CYCencode'),(62,3,'qbd','ysm byj jjq ysh hqk mvw hlj ivb nti yun','CYCencode'),(63,3,'kwm','qzh rbu cfd iva vjb lcg gjc dvv dme mnl','CYCencode'),(64,3,'ery','ady urm ebt bzn zhi kiq eqj izl rqp rml','CYCencode'),(65,3,'mbg','hgx ank wzy fbx zkp ink afe avf amv vjq','CYCencode'),(66,3,'xkc','bfw kmq zgu aht xti hca oro svt gcf hpm','CYCencode'),(67,3,'alp','igm mid nwb wcu lxp pby yik ior wbo qbj','CYCencode'),(68,3,'ued','ncn gju gor uac mvg kyp lbc kpd yid hlj','CYCencode'),(69,3,'jky','rhz hab yul odh gwf led nqa mpu vdr lke','CYCencode'),(70,3,'lgi','rdd ens rlw rxf syg oog zpf ptg fbn tes','CYCencode'),(71,3,'eoj','ugy ucl rct mvv fow soz cgo vmo aiw oya','CYCencode'),(72,3,'kng','eds iyv fox bgd kpb dre icl qhg bni kpw','CYCencode'),(73,3,'fzt','nwk ksl zqz byn wdg xgz chi hly kvs ofu','CYCencode'),(74,3,'ecn','fyz yda zyp faw iqq yxy rdp uid vtj iaf','CYCencode'),(75,3,'edy','mwb bkh bwh vyz umv aty kow uoo aad azi','CYCencode'),(76,3,'ogh','bjg dsj zxt xad kxi ieb fli err uzi kwh','CYCencode'),(77,3,'ivq','zai ppf jer imr hwx utp ogi rtj sgd npc','CYCencode'),(78,3,'ydg','lrt jqp lja hku mgv ecb xds ygk ljr wfj','CYCencode'),(79,3,'agm','eey pnw uzm qea jor eew lbv qwx nfa ryd','CYCencode'),(80,3,'ssw','zrn xci puc ibo rtb suz pcs ezs kpz amj','CYCencode'),(81,3,'dkk','ugw gog oct eri dbi hic hjg was uog xcg','CYCencode'),(82,3,'kbi','eln csm zgz bvj utg yzb uun bei khk xjk','CYCencode'),(83,3,'ydd','fod gbk hgo bky kje jzf fhb nwr lmw pey','CYCencode'),(84,3,'bql','ced nwf ovf fza igg uek pkg cit xey rmw','CYCencode'),(85,3,'hye','qtz hva vqa ydi tpv cec yrf nht mqd ysn','CYCencode'),(86,3,'jje','uaj jwn pfh pcx zna dsr cle sdg hfp sre','CYCencode'),(87,3,'ixf','jlm yui tol cho ebr xkb dzd hif tng euk','CYCencode'),(88,3,'aaq','oiw aky fnx ytt eyx lst yox lwj pse epn','CYCencode'),(89,3,'enx','uwg wrz fxw gbp vwo vxu cal ibo byz fed','CYCencode'),(90,3,'sxe','ejz epi adp dzv saq gbo beo slq uxb gde','CYCencode'),(91,4,'qep','rcb uzz boi lbf pir doq ocv xnt mej eox','evelynchang'),(92,4,'mvg','mbn ijh xsw skh rjb fbn qqs ozx ebi ygp','evelynchang'),(93,4,'yvu','wpr ios hon wir uwh shi kyo znu ebu bhn','evelynchang'),(94,4,'quz','xdq bay svw cbb zmj jqf baq oxl zeg rld','evelynchang'),(95,4,'oqc','jjp zvg vgv hkv gmt pyx thr nir lji tjd','evelynchang'),(96,4,'yfj','euf ner tct vaa wqk qcf zom but nok ghy','evelynchang'),(97,4,'vra','rry gox nfr ymr zzc aoi vpx wfb vad nwf','evelynchang'),(98,4,'ntk','hfr wed mmm qao rma ipf ihl zao qun oga','evelynchang'),(99,4,'xgi','jpk kkg ndc pfh qzx eib kgm opo uqn skv','evelynchang'),(100,4,'fwc','ksb bla dxd ayr wkl cuh sfl ydq hya rmx','evelynchang'),(101,4,'zxb','fwm edc sie mil qxl xsl rof krg jme tgg','evelynchang'),(102,4,'rkb','nrz wyp uex mnh ssp fox ouu avx ofh wkl','evelynchang'),(103,4,'hna','ogh lel ipl dce zpz tov vnf ern rwv ffh','evelynchang'),(104,4,'uwe','scx ndn ufs mhr euj pcm otw olk eqz rpw','evelynchang'),(105,4,'egi','tye oes evy mhp lyy yci vvn qnu iud srv','evelynchang'),(106,4,'rqj','ffc tyn mcq rjw ilq jrx tnw ult rah oec','evelynchang'),(107,4,'zyd','mgx ooc upq bfc ukf sbq erx esh fsw iqu','evelynchang'),(108,4,'mfj','lsh jke lxm daq hsy etk ryb puw mwn tpl','evelynchang'),(109,4,'rpu','luw gfx quj qfa pgu vfe jcu lry whe xht','evelynchang'),(110,4,'xyr','dtb eti eer ojy teg kep rrz bvt gsw zkp','evelynchang'),(111,4,'amf','tol fbx eaq gpm tps iqg opg qxo jpp ttn','evelynchang'),(112,4,'eoc','thx cmo eqc pas yux xce jex xhe nxj ayr','evelynchang'),(113,4,'cgk','rty pqo vtn bzb jbb jav fya upl rrb bip','evelynchang'),(114,4,'vuo','buz esz ikz lov wfh wqx rqj kge lyz all','evelynchang'),(115,4,'exh','iqj upw oyj hoz vrs efv cay cxy lhd ejk','evelynchang'),(116,4,'cve','hlh jlt cjx qdr qjt hjd lel coy hcv pcf','evelynchang'),(117,4,'yuy','etc det kcf qvh bcc emh ubj hwo whm hgp','evelynchang'),(118,4,'qcg','snj uct rrs kzz fyj lqn ogm rxr nxd zyb','evelynchang'),(119,4,'nvz','cne wqi gtw zfa gkj jzt ddi hjx ryn atg','evelynchang'),(120,4,'rwe','kva bve iis inc azk oku vkf qtu zbz zba','evelynchang');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-12 21:27:27
