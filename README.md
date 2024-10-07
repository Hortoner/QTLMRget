# QTLMR

**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;联系作者：Dr.H E-mail: 2214047750@qq.com**
<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在现代生物医学研究中，理解基因与疾病之间的因果关系是发现新的治疗靶点的关键；通过Post GWAS与多组学孟德尔随机化分析，能更好探究疾病发病的病理生理机制。QTLMR是一个功能强大的R语言包，整合了MR、共定位、SMR、MTAG、Hess、METAL、LDSC、CPASSOC、PLACO和TWAS分析等多种算法及多种可视化绘图功能。这些方法共同为快速识别疾病发病的诱因、治疗的潜在靶点提供了一体化的解决方案。
<br><br>

### R语言集合软件包安装与更新:
```r
##安装remotes包。
install.packages("remotes")

##注意：依赖的 data.table包 版本必须 <= 1.15.4，请勿更新至 >= 1.16.0 版本！！！
remotes::install_version("data.table", version = "1.15.4",force = TRUE)

##安装QTLMRget包。
remotes::install_github("Hortoner/QTLMRget")

##获取token，付费授权；一次授权永久免费更新。
QTLMRget::getToken()

##在线安装；老用户无需重复授权，可直接更新QTLMR包。
QTLMRget::install_QTLMR()

##配置Rtools、OPENGWAS_JWT与GITHUB_TOKEN的token##
QTLMRget::install_token(OPENGWAS_JWT = " ", GITHUB_TOKEN = NULL)

##安装QTLMR相关依赖包；可重复多次运行该函数，直到所有依赖包安装成功。
QTLMRget::install_QTLMR_dependence()

##加载QTLMR程序包（首次加载需1-2分钟更新内置软件）。
library(QTLMR)

##查看QTLMR包使用帮助文档。
help(package = QTLMR)
```

<br>
论文复现教学视频:&nbsp;&nbsp;&nbsp;&nbsp;https://b23.tv/1kbNqFk
<br>
论文复现示例代码:&nbsp;&nbsp;&nbsp;&nbsp;https://hortoner.github.io/QTLMR/articles/index.html
<br><br>



-  **1. 内置多种组学数据:**

    -   人类史上最大规模的pQTL数据（decode、ukb-ppp、fenland队列），总数据量10T+，已清洗内置，用于探索疾病的治疗靶点；
    -   剪接、甲基化、基因、蛋白等sQTL、mQTL、eQTL、pQTL数据提供下载地址；
    -   196种、412种及473种3大队列肠道微生物（菌群）暴露数据，用于探索肠道微生物（菌群）及其代谢通路与疾病/临床性状的因果关系；
    -   1400种血浆代谢物暴露数据，用于探索血浆代谢物与疾病的因果关系；
    -   731种免疫细胞暴露数据，用于探索人体免疫细胞与疾病的因果关系；
    -   41种炎症因子及91种炎症蛋白露数据，用于探索炎症因子或蛋白与疾病的因果关系；
    -   IEU数据库中7020个临床表型暴露数据，快速寻找疾病/临床性状的发病因素；
    -   更多数据将不断更新...
    

-  **2. 内置多种兼容Linux、python分析软件:**

    -   plink: 基础性工具，用于GWAS中的遗传数据质量控制和单、多标记分析；
    -   SMR: 通过整合GWAS与eQTL数据，鉴别潜在因果基因的工具；
    -   GCTA:计算全基因组 SNP 对复杂性状解释的表型方差比例的软件；
    -   METAL: 用于多队列GWAS meta分析的工具，整合不同样本的遗传效应；
    -   MTAG: 联合多个表型进行GWAS分析，提升统计效能的工具；
    -   Hess: 估计基因组区域遗传方差成分，解析复杂性状遗传架构；
    -   CPASSOC: 多表型联合分析，检测表型间共享遗传效应的工具；
    -   LDSC: 基于LD分数的回归方法，用于估算遗传相关性和遗传度；
    -   PLACO: 多效性检测工具，分析共享遗传变异对多性状的影响；
    -   FUSION: 整合表型和功能数据，估计基因遗传效应的工具；
    -   UTMOST: 跨组织GWAS分析，探索基因表达对表型影响；
    -   FUCUS: 基于功能注释精细定位GWAS信号，提高复杂性状变异鉴定；
    -   MR-JTI: 从基因型数据推导多个组织的基因表达水平，从而做TWAS和MR分析；
    -   MAGMA: 基因和基因集分析工具，适用于大规模多标记关联研究；
    -   已适当优化软件底层代码，减少报错，提高兼容性。
    
    
    
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;QTLMR包为研究人员提供了一套完整且强大的工具，用于揭示基因与疾病之间的因果关系。通过整合MR、共定位、SMR & HEIDI、MTAG、Hess、METAL、LDSC、CPASSOC、PLACO和TWAS分析分析等多种算法，QTLMR包帮助研究人员快速识别疾病的潜在治疗靶点。如果你致力于理解基因与疾病的关系并寻找新的治疗靶点或探索疾病发病机制，QTLMR包将是您的理想选择，祝君科研顺利！
<br>

**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更多函数及功能将不断更新，敬请期待...**
