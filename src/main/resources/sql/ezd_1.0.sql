-- v1.3


CREATE DATABASE ezd;

USE ezd;
CREATE TABLE ezd_users(							-- 用户表
	userid INT PRIMARY KEY AUTO_INCREMENT,  
	userName VARCHAR(30) NOT NULL,  		-- 账号
	PASSWORD VARCHAR(30) NOT NULL,			-- 密码
	userType VARCHAR(30) NOT NULL,          -- 用户类型
	token VARCHAR(30)						-- 手机号登录保存验证码，请求发送验证码的时候插入，验证成功后修改为Null
	
);

CREATE TABLE ezd_role(
	roleid INT PRIMARY KEY AUTO_INCREMENT,
	roleName VARCHAR(30)			-- 角色名称
);

CREATE TABLE ezd_permission(
	permissionId INT PRIMARY KEY AUTO_INCREMENT,
	PermissionName VARCHAR(30)		-- 权限名称
);

CREATE TABLE ezd_user_role(					-- 用户角色关系表
	userroleId INT PRIMARY KEY AUTO_INCREMENT,
	userId INT NOT NULL,				-- 用户id
	roleId INT NOT NULL					-- 角色id
);


CREATE TABLE ezd_role_permission(			-- 角色权限关系表
	RolePermissionID INT PRIMARY KEY AUTO_INCREMENT,
	roleId INT NOT NULL,				-- 角色id
	permissionId INT NOT NULL			-- 权限id
);


CREATE TABLE ezd_userInfo(				-- 用户信息表
 userInfoId INT PRIMARY KEY AUTO_INCREMENT,
 birthday DATETIME ,   			-- 用户生日
 Headportrait VARCHAR(300),			-- 用户头像
 phone CHAR(11),					-- 手机号码
 NickName VARCHAR(30) NOT NULL,		-- 姓名
 school VARCHAR(30) NOT NULL,		-- 学校
 sex INT CHECK(sex = 0 OR sex = 1), -- 性别
 jobIntention VARCHAR(50),			-- 求职意向
 feedBackId INT,					-- 关联意见反馈
 userId INT NOT NULL,				-- 关联得用户
 resumeId INT NOT NULL				-- 关联简历
);



CREATE TABLE ezd_feedback(  		    -- 意见反馈表(具体不是很清楚)
	feedBackId INT PRIMARY KEY AUTO_INCREMENT,  -- id
	feedBackProblem VARCHAR(100) NOT NULL, 		-- 意见问题
	opinion VARCHAR(100) NOT NULL				-- 你反馈得意见
);

CREATE TABLE ezd_resume(		-- 简历表
	resumeId INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(30) NOT NULL,  				-- 姓名
	birthday DATETIME  NOT NULL,				-- 生日
	ID_card CHAR(18) NOT NULL,					-- 省份证号码
	Placeoforigin VARCHAR(30),					-- 籍贯
	Workexperience VARCHAR(200),				-- 工作简历
	Selfevaluation VARCHAR(200)				-- 自我评价
);

-- 在企业表新增一个行业类型
CREATE TABLE ezd_enterprise( 							-- 企业表
	enterpriseId INT PRIMARY KEY AUTO_INCREMENT,
	enterpriseName VARCHAR(30),						-- 企业名称
	enterpriseIcon VARCHAR(300),					-- 企业图标
	enterpriseAddress VARCHAR(30),					-- 企业地址
	enterpriseScale  VARCHAR(30),					-- 企业规模
	enterpriseIntroduction VARCHAR(200),			-- 企业介绍
	industry_Name int  references ezd_industry(id),		-- 企业行业类型
	enterpriseTypeId INT REFERENCES ezd_enterpriseType (enterpriseTypeID)
);

CREATE TABLE ezd_user_enterprise(
	user_enterprise_id INT PRIMARY KEY AUTO_INCREMENT,
	followCompany INT REFERENCES ezd_enterprise (enterpriseId), 	-- 关注企业
	ConcernedPeople INT REFERENCES ezd_Users (userId),				-- 关注人
	user_enterprise_statu INT CHECK(user_enterprise_statu = 0 OR user_enterprise_statu = 1) -- 关注状态，0 关注 1 取消关注
);

CREATE TABLE ezd_enterpriseType(  						-- 企业类型表
	enterpriseTypeID INT PRIMARY KEY AUTO_INCREMENT,
	enterpriseTypeName VARCHAR(30)					-- 企业类型名称
);


CREATE TABLE ezd_school(								-- 学校表
	schoolId INT PRIMARY KEY AUTO_INCREMENT,
	schoolName VARCHAR(30) NOT NULL,				-- 学校名称
	schoolAddress VARCHAR(30) NOT NULL,				-- 学校地址
	schret_detail VARCHAR(30),						-- 校招会详情
	schoolTypeId INT REFERENCES ezd_schoolType(schoolTypeId), 
	schoolCount INT 								-- 校招会场数
);

CREATE TABLE ezd_schoolType(						-- 学校类型表
	schoolTypeId INT PRIMARY KEY AUTO_INCREMENT,
	schoolTypeName VARCHAR(30)					-- 学校类型名称（如：大专，高职）
);


CREATE TABLE ezd_article( 							-- 就业指导表
	ArticleId INT PRIMARY KEY AUTO_INCREMENT,
	mainTitle VARCHAR(30) NOT NULL,				-- 主标题
	subTitle VARCHAR(50) NOT NULL,				-- 副标题
	ArticleImg VARCHAR(300),					-- 文章图片
	content VARCHAR(300),						-- 内容
	sendDate DATETIME DEFAULT CURRENT_TIMESTAMP, -- 发布时间（默认当前）
	sendByUser INT REFERENCES ezd_Users (userId),		-- 发布文章的作者
	sendByUser_email VARCHAR(20) NOT NULL,			-- 发布文章的作者得邮箱
	Article_statue INT CHECK(Article_statue = 0 OR Article_statue = 1) -- 文章状态
);

CREATE TABLE ezd_Browse(															-- 浏览就业指导文章的关联表							
	BrowseId INT PRIMARY KEY AUTO_INCREMENT,	
	BrowseArticle INT REFERENCES ezd_Article(ArticleId),		-- 浏览的文章的id
	BrowsePeople INT REFERENCES ezd_Users (userId) 									-- 浏览人的id
);

CREATE TABLE ezd_comments(							-- 评论表
	commentId INT PRIMARY KEY AUTO_INCREMENT,
	employmentGuidanceId INT REFERENCES ezd_Article(ArticleId),  -- 评论的文章
	commentContent VARCHAR(30) NOT NULL,											-- 评论的内容
	commentDate DATETIME DEFAULT CURRENT_TIMESTAMP,								-- 评论时间（默认当前）
	Critic  INT REFERENCES ezd_Users (userId)											-- 评论人
);

CREATE TABLE ezd_goodByArticle(								   							  -- 文章点赞表
	goodByArticleId INT PRIMARY KEY AUTO_INCREMENT,
	ArticleId INT REFERENCES Article (ArticleId),										  -- 点赞的文章
	userId INT REFERENCES ezd_Users (userId),												  -- 点赞的人
	goodByArticle_statue INT CHECK(goodByArticle_statu = 0 OR goodByArticle_statu =1)  -- 0 点赞，1 取消点赞 
);

CREATE TABLE ezd_goodByComments(										-- 评论点赞表
	gid INT PRIMARY KEY AUTO_INCREMENT,
	commentId INT REFERENCES ezd_comments (commentId),						-- 点赞得评论
	userId INT REFERENCES Users (userId),								-- 点赞得人
	goodByComments_statue INT CHECK(goodByComments_statu = 0 OR goodByComments_statu =1) -- 0 点赞，1 取消点赞 
);

CREATE TABLE ezd_theAttraction(									-- 大招会表
	theAttractionId INT PRIMARY KEY AUTO_INCREMENT,
	Title VARCHAR(30) NOT NULL,								-- 主标题	
	theAttractionImg VARCHAR(300),							-- 图片
	starttime DATETIME DEFAULT CURRENT_TIMESTAMP, 		-- 开始时间
	contentBytheAttraction VARCHAR(300),					-- 大招会得内容或介绍
	venue VARCHAR(30),										-- 举办地址
	endTime DATETIME 								-- 结束时间
);
-- 新增加  关联(ezd_Users和ezd_theAttraction)
CREATE TABLE ezd_theAttractionApplicant(
	applicantId INT PRIMARY KEY AUTO_INCREMENT,			
	applicant int REFERENCES ezd_Users (userId),			-- 报名者
	theAttraction int REFERENCES ezd_theAttraction (theAttractionId)	-- 报名的大招会
);

-- 在岗位表新增一个岗位名称（关联PositionName表）
CREATE TABLE ezd_Post(											-- 企业招聘信息表
	postId INT PRIMARY KEY AUTO_INCREMENT,
	post_title VARCHAR(30) NOT NULL,						-- 招聘岗位的标题
	company INT REFERENCES ezd_enterprise (enterpriseId),		-- 公司信息
	sendPostDate DATETIME DEFAULT CURRENT_TIMESTAMP,		-- 招聘信息发布日期
	contacts VARCHAR(30) NOT NULL,							-- 招聘联系人
	contactInformation VARCHAR(30) NOT NULL,				-- 招聘联系人得联系方式
	Position_name int references ezd_PositionName (PositionNameId),	-- 关联岗位名称
 	recruitmentNumber  VARCHAR(20) NOT NULL					-- 招聘人数
	
);
-- 新增岗位浏览记录表（关联ezd_users表，ezd_Post表）
create table ezd_postBrowse(
	postBrowseId int primary key AUTO_INCREMENT,
	browse_user int references ezd_users(userid),
	postId int references ezd_Post(postId)
	
)

-- 增加工作类型字段（关联ezd_recruitmentDetailsType）
CREATE TABLE ezd_recruitmentDetails(							-- 岗位详情表
	RecruitmentDetailsId INT PRIMARY KEY AUTO_INCREMENT,
	JobRequirements VARCHAR(30) NOT NULL,					-- 工作要求
	GenderRequirements VARCHAR(20) NOT NULL,				-- 性别要求
	EducationalRequirements VARCHAR(20) NOT NULL,			-- 学历要求
	CompanyBenefits VARCHAR(30) NOT NULL,					-- 公司福利（五保一金之类的）
	JobContent VARCHAR(300) NOT NULL,						-- 工作内容
	salary VARCHAR(30),										-- 薪水
	JobType INT REFERENCES ezd_recruitmentDetailsType (recruitmentDetailsTypeId),	-- 工作类型（实习或全职）
	postId INT REFERENCES ezd_Post(postId)						-- 对应的岗位表
);
-- 新增工作类型表跟ezd_recruitmentDetails关联
CREATE TABLE ezd_recruitmentDetailsType(
	recruitmentDetailsTypeId INT PRIMARY KEY AUTO_INCREMENT,
	recruitmentDetailsTypeName varchar(30)		-- 工作类型名称
);

CREATE TABLE ezd_interview(											-- 面试表
	InterviewId INT PRIMARY KEY AUTO_INCREMENT,
	resumeId INT REFERENCES ezd_resume (resumeId),					-- 投递的简历
	InterviewCompany INT REFERENCES ezd_enterprise(enterpriseId),	-- 面试公司
	Interviewer INT REFERENCES ezd_Users (userId),  				-- 面试者
	InterviewStatue INT DEFAULT 0,								-- 状态，默认（0，待审核，1，通过，2，不通过）
	InterviewDate DATETIME DEFAULT CURRENT_TIMESTAMP,			-- 面试时间
	take_InterviewStatue INT CHECK(InterviewStatu = 1 OR InterviewStatu = 0)  -- 投递简历的状态，1，投简历，2，取消应聘
);


CREATE TABLE ezd_advertisement(										-- 广告表
	AdvertisementId INT PRIMARY KEY AUTO_INCREMENT,
	AdvertisementImg VARCHAR(300),								-- 广告图片
	AdvertisementTitle VARCHAR(30),								-- 广告标题（超链接广告用的）
	AdvertisementContent VARCHAR(300),							-- 广告内容
	AdvertisingUrl VARCHAR(50),									-- 广告链接
	AdvertisingContact VARCHAR(20),								-- 广告联系人
	AdvertisingPosition VARCHAR(30),							-- 广告位置
	AdvertisingType VARCHAR(10),								-- 广告类型
	AdvertisingStatue INT CHECK(AdvertisingStatu = 0 OR AdvertisingStatu = 1) -- 广告状态，0 显示，1 隐藏
);


CREATE TABLE ezd_userTotal(											-- 用户操作统计表
	UserTotalId INT PRIMARY KEY AUTO_INCREMENT,	
	userId INT REFERENCES ezd_Users (userId),						-- 对应的用户
	TotalEnrollment INT ,										-- 总报名次数
	CancellationNumber INT,										-- 取消次数
	NumberOfEmployed INT,										-- 被录用次数
	UserTermination INT,										-- 用户解约
	EnterpriseTermination INT,									-- 企业解约
	AlreadyCompleted INT										-- 已完工
);


CREATE TABLE ezd_verification(
	VerificationId INT PRIMARY KEY AUTO_INCREMENT,
	RealName VARCHAR(30) NOT NULL,					-- 真实姓名
	IDcard CHAR(18),								-- 身份证号码
	phone CHAR(11),									-- 手机号码
	imageFont VARCHAR(300), 						-- 身份证正面
	imageBack VARCHAR(300),							-- 身份证背面
	userid int REFERENCES ezd_Users (userId)			-- 对应用户
);



-- 为用户角色关系表添加主外建
ALTER TABLE ezd_user_role ADD CONSTRAINT fk_userid FOREIGN KEY(userId) REFERENCES ezd_users(userid);
ALTER TABLE ezd_user_role ADD CONSTRAINT fk_roleid FOREIGN KEY(roleId) REFERENCES ezd_role(roleid);

-- 角色权限表与角色表和权限关联
ALTER TABLE ezd_role_permission ADD CONSTRAINT fk_PermissionId FOREIGN KEY(permissionId) REFERENCES ezd_permission(permissionId);
ALTER TABLE ezd_role_permission ADD CONSTRAINT fk_roleidPermission FOREIGN KEY(roleId) REFERENCES ezd_role(roleid);

-- 用户信息表跟关联用户表，意见反馈表，简历表
ALTER TABLE ezd_userInfo ADD CONSTRAINT fk_userid_userInfo FOREIGN KEY (userid) REFERENCES ezd_users(userid);
ALTER TABLE ezd_userInfo ADD CONSTRAINT fk_feedBack FOREIGN KEY (feedBackId) REFERENCES ezd_feedback (feedBackId);
ALTER TABLE ezd_userInfo ADD CONSTRAINT fk_Resume FOREIGN KEY (resumeId) REFERENCES ezd_resume (resumeId);


-- 新增表
create table ezd_industry(								-- 行业类型表
	industryId int primary key auto_increment,
	industryName varchar(30)						-- 行业名称（/计算机/互联网/通信  销售）
);
-- 新增表
create table ezd_PositionName(									-- 岗位名称表
	PositionNameId int primary key auto_increment,
	pname varchar(30),										-- 岗位名称（即：程序员，文员，客户经理等）
	industry_Name int references ezd_industry (industryId) 		-- 所对应的行业
);









