@400000005ba3ae0f12cb840c 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten] MongoDB starting : pid=1473 port=31484 dbpath=/home/learnapp/mongodb 64-bit host=enif.uberspace.de
@400000005ba3ae0f12cd1e34 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten] db version v3.6.3
@400000005ba3ae0f12ce27d4 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten] git version: 9586e557d54ef70f9ca4b43c26892cd55257e1a5
@400000005ba3ae0f12cec414 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten] OpenSSL version: OpenSSL 1.0.1e-fips 11 Feb 2013
@400000005ba3ae0f12cfb25c 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten] allocator: tcmalloc
@400000005ba3ae0f12d042e4 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten] modules: none
@400000005ba3ae0f12d0bfe4 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten] build environment:
@400000005ba3ae0f12d140cc 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten]     distmod: rhel62
@400000005ba3ae0f12d1bdcc 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten]     distarch: x86_64
@400000005ba3ae0f12d23eb4 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten]     target_arch: x86_64
@400000005ba3ae0f12d32cfc 2018-09-20T16:26:13.315+0200 I CONTROL  [initandlisten] options: { net: { bindIp: "127.0.0.1", port: 31484 }, security: { authorization: "enabled" }, storage: { dbPath: "/home/learnapp/mongodb", mmapv1: { smallFiles: true }, wiredTiger: { engineConfig: { cacheSizeGB: 0.5 } } } }
@400000005ba3ae0f1305a2f4 2018-09-20T16:26:13.319+0200 I STORAGE  [initandlisten] 
@400000005ba3ae0f13064aec 2018-09-20T16:26:13.319+0200 I STORAGE  [initandlisten] ** WARNING: Using the XFS filesystem is strongly recommended with the WiredTiger storage engine
@400000005ba3ae0f1306d78c 2018-09-20T16:26:13.319+0200 I STORAGE  [initandlisten] **          See http://dochub.mongodb.org/core/prodnotes-filesystem
@400000005ba3ae0f130b639c 2018-09-20T16:26:13.319+0200 I STORAGE  [initandlisten] wiredtiger_open config: create,cache_size=512M,session_max=20000,eviction=(threads_min=4,threads_max=4),config_base=false,statistics=(fast),log=(enabled=true,archive=true,path=journal,compressor=snappy),file_manager=(close_idle_time=100000),statistics_log=(wait=0),verbose=(recovery_progress),
@400000005ba3ae100d49543c 2018-09-20T16:26:14.222+0200 W STORAGE  [initandlisten] Detected configuration for non-active storage engine mmapv1 when current storage engine is wiredTiger
@400000005ba3ae100d728334 2018-09-20T16:26:14.225+0200 I CONTROL  [initandlisten] 
@400000005ba3ae100d7365c4 2018-09-20T16:26:14.225+0200 I CONTROL  [initandlisten] ** WARNING: /sys/kernel/mm/transparent_hugepage/enabled is 'always'.
@400000005ba3ae100d73fa34 2018-09-20T16:26:14.225+0200 I CONTROL  [initandlisten] **        We suggest setting it to 'never'
@400000005ba3ae100d751f2c 2018-09-20T16:26:14.225+0200 I CONTROL  [initandlisten] 
@400000005ba3ae100d75b39c 2018-09-20T16:26:14.225+0200 I CONTROL  [initandlisten] ** WARNING: /sys/kernel/mm/transparent_hugepage/defrag is 'always'.
@400000005ba3ae100d763c54 2018-09-20T16:26:14.225+0200 I CONTROL  [initandlisten] **        We suggest setting it to 'never'
@400000005ba3ae100d770774 2018-09-20T16:26:14.225+0200 I CONTROL  [initandlisten] 
@400000005ba3ae100d77d294 2018-09-20T16:26:14.225+0200 I CONTROL  [initandlisten] ** WARNING: soft rlimits too low. rlimits set to 300 processes, 1024 files. Number of processes should be at least 512 : 0.5 times number of files.
@400000005ba3ae100d786ed4 2018-09-20T16:26:14.225+0200 I CONTROL  [initandlisten] 
@400000005ba3ae100d92923c 2018-09-20T16:26:14.227+0200 I STORAGE  [initandlisten] createCollection: admin.system.version with provided UUID: d156c342-7753-447e-af8a-aef1f8562c70
@400000005ba3ae100e782b94 2018-09-20T16:26:14.242+0200 I COMMAND  [initandlisten] setting featureCompatibilityVersion to 3.6
@400000005ba3ae100ec8c464 2018-09-20T16:26:14.248+0200 I STORAGE  [initandlisten] createCollection: local.startup_log with generated UUID: 30e5fb45-7666-4c96-a913-eb8dc79173ab
@400000005ba3ae100fc7c1bc 2018-09-20T16:26:14.264+0200 I FTDC     [initandlisten] Initializing full-time diagnostic data capture with directory '/home/learnapp/mongodb/diagnostic.data'
@400000005ba3ae100fd8156c 2018-09-20T16:26:14.265+0200 I NETWORK  [initandlisten] waiting for connections on port 31484
@400000005ba3ae101caeb854 2018-09-20T16:26:14.481+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:38880 #1 (1 connection now open)
@400000005ba3ae101cb2e6a4 2018-09-20T16:26:14.481+0200 I ACCESS   [conn1] note: no users configured in admin.system.users, allowing localhost access
@400000005ba3ae101dda1124 2018-09-20T16:26:14.500+0200 I STORAGE  [conn1] createCollection: admin.system.users with generated UUID: ca06c656-ef1f-42ce-a829-299022bbcf18
@400000005ba3ae101f52f19c 2018-09-20T16:26:14.525+0200 I NETWORK  [conn1] end connection 127.0.0.1:38880 (0 connections now open)
@400000005ba3ae5419398ec4 2018-09-20T16:27:22.423+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:40056 #2 (1 connection now open)
@400000005ba3ae541941bc84 2018-09-20T16:27:22.423+0200 I NETWORK  [conn2] received client metadata from 127.0.0.1:40056 conn: { application: { name: "MongoDB Shell" }, driver: { name: "MongoDB Internal Client", version: "3.6.3" }, os: { type: "Linux", name: "CentOS release 6.10 (Final)", architecture: "x86_64", version: "Kernel 2.6.32-696.18.7.el6.x86_64" } }
@400000005ba3ae541ae5d37c 2018-09-20T16:27:22.451+0200 I ACCESS   [conn2] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba3af2e04dbfafc 2018-09-20T16:31:00.080+0200 I NETWORK  [conn2] end connection 127.0.0.1:40056 (0 connections now open)
@400000005ba3af3c0c8de3dc 2018-09-20T16:31:14.210+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44966 #3 (1 connection now open)
@400000005ba3af3c0c93d74c 2018-09-20T16:31:14.210+0200 I NETWORK  [conn3] received client metadata from 127.0.0.1:44966 conn: { application: { name: "MongoDB Shell" }, driver: { name: "MongoDB Internal Client", version: "3.6.3" }, os: { type: "Linux", name: "CentOS release 6.10 (Final)", architecture: "x86_64", version: "Kernel 2.6.32-696.18.7.el6.x86_64" } }
@400000005ba3af3c0e1c7ed4 2018-09-20T16:31:14.236+0200 I ACCESS   [conn3] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba3af3c0fe1643c 2018-09-20T16:31:14.266+0200 I STORAGE  [thread4] createCollection: config.system.sessions with generated UUID: 3d2a8d65-aa21-4c13-bd7f-bce658dac79b
@400000005ba3af3c11620ce4 2018-09-20T16:31:14.291+0200 I INDEX    [thread4] build index on: config.system.sessions properties: { v: 2, key: { lastUse: 1 }, name: "lsidTTLIndex", ns: "config.system.sessions", expireAfterSeconds: 1800 }
@400000005ba3af3c116358ec 2018-09-20T16:31:14.291+0200 I INDEX    [thread4] 	 building index using bulk method; build may temporarily use up to 500 megabytes of RAM
@400000005ba3af3c11800c94 2018-09-20T16:31:14.293+0200 I INDEX    [thread4] build index done.  scanned 0 total records. 0 secs
@400000005ba3c32a04c127cc 2018-09-20T17:56:16.078+0200 I NETWORK  [conn3] end connection 127.0.0.1:44966 (0 connections now open)
@400000005ba3c3490906f76c 2018-09-20T17:56:47.151+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:38310 #4 (1 connection now open)
@400000005ba3c3490910daac 2018-09-20T17:56:47.152+0200 I NETWORK  [conn4] received client metadata from 127.0.0.1:38310 conn: { application: { name: "MongoDB Shell" }, driver: { name: "MongoDB Internal Client", version: "3.6.3" }, os: { type: "Linux", name: "CentOS release 6.10 (Final)", architecture: "x86_64", version: "Kernel 2.6.32-696.18.7.el6.x86_64" } }
@400000005ba3c3490aa0bdc4 2018-09-20T17:56:47.178+0200 I ACCESS   [conn4] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba3c92f1ab0736c 2018-09-20T18:21:57.447+0200 I STORAGE  [conn4] createCollection: users.users with generated UUID: 1cffbd84-c617-4ac9-bb76-fc2de65ed1c2
@400000005ba3cff01ed7f53c 2018-09-20T18:50:46.517+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:57136 #5 (2 connections now open)
@400000005ba3cff020ac8274 2018-09-20T18:50:46.548+0200 I NETWORK  [conn5] received client metadata from 127.0.0.1:57136 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005ba3cff0226c4374 2018-09-20T18:50:46.577+0200 I ACCESS   [conn5] Unauthorized: not authorized on local to execute command { listCollections: true, filter: {}, cursor: {}, $db: "local" }
@400000005ba3d04b07de3e7c 2018-09-20T18:52:17.131+0200 I ACCESS   [conn5] Unauthorized: not authorized on local to execute command { listCollections: true, filter: {}, cursor: {}, $db: "local" }
@400000005ba3d051015fd074 2018-09-20T18:52:23.022+0200 I ACCESS   [conn5] Unauthorized: not authorized on local to execute command { listCollections: true, filter: {}, cursor: {}, $db: "local" }
@400000005ba3d0c624a660ac 2018-09-20T18:54:20.614+0200 I NETWORK  [conn5] end connection 127.0.0.1:57136 (1 connection now open)
@400000005ba3d0c83a021edc 2018-09-20T18:54:22.973+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34114 #6 (2 connections now open)
@400000005ba3d0c900222c0c 2018-09-20T18:54:22.999+0200 I NETWORK  [conn6] received client metadata from 127.0.0.1:34114 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005ba3d0c9014a8b24 2018-09-20T18:54:23.021+0200 I ACCESS   [conn6] Unauthorized: not authorized on local to execute command { listCollections: true, filter: {}, cursor: {}, $db: "local" }
@400000005ba3d1a9337ea3dc 2018-09-20T18:58:07.863+0200 I ACCESS   [conn6] Unauthorized: not authorized on test to execute command { listCollections: true, filter: { name: "delete_me" }, cursor: {}, $db: "test" }
@400000005ba3d1bb01d638f4 2018-09-20T18:58:25.030+0200 I ACCESS   [conn6] Unauthorized: not authorized on local to execute command { dropDatabase: 1, $db: "local" }
@400000005ba3d1c40b800204 2018-09-20T18:58:34.192+0200 I ACCESS   [conn6] Unauthorized: not authorized on local to execute command { listCollections: true, filter: {}, cursor: {}, $db: "local" }
@400000005ba3d1e500b52124 2018-09-20T18:59:07.011+0200 I NETWORK  [conn6] end connection 127.0.0.1:34114 (1 connection now open)
@400000005ba3d1e638028a04 2018-09-20T18:59:08.939+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:40570 #7 (2 connections now open)
@400000005ba3d1e639a18464 2018-09-20T18:59:08.966+0200 I NETWORK  [conn7] received client metadata from 127.0.0.1:40570 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005ba3d1e63a64f78c 2018-09-20T18:59:08.979+0200 I ACCESS   [conn7] Unauthorized: not authorized on local to execute command { listCollections: true, filter: {}, cursor: {}, $db: "local" }
@400000005ba3d27c100bd384 2018-09-20T19:01:38.268+0200 I NETWORK  [conn7] end connection 127.0.0.1:40570 (1 connection now open)
@400000005ba3d27e1c6f1b2c 2018-09-20T19:01:40.476+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:43722 #8 (2 connections now open)
@400000005ba3d27e1dfd2d6c 2018-09-20T19:01:40.503+0200 I NETWORK  [conn8] received client metadata from 127.0.0.1:43722 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005ba3d27e1eb58ca4 2018-09-20T19:01:40.515+0200 I ACCESS   [conn8] Unauthorized: not authorized on local to execute command { listCollections: true, filter: {}, cursor: {}, $db: "local" }
@400000005ba3d2ba0fae1f3c 2018-09-20T19:02:40.262+0200 I NETWORK  [conn8] end connection 127.0.0.1:43722 (1 connection now open)
@400000005ba3d2bc19770cf4 2018-09-20T19:02:42.426+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44632 #9 (2 connections now open)
@400000005ba3d2bc1ad32a24 2018-09-20T19:02:42.449+0200 I NETWORK  [conn9] received client metadata from 127.0.0.1:44632 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005ba3d2bc251bea84 2018-09-20T19:02:42.622+0200 I ACCESS   [conn9] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba3d2bc25719fec 2018-09-20T19:02:42.628+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44644 #10 (3 connections now open)
@400000005ba3d2bc2d4512bc 2018-09-20T19:02:42.759+0200 I ACCESS   [conn10] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba3d2bc2da21f0c 2018-09-20T19:02:42.765+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44648 #11 (4 connections now open)
@400000005ba3d2bc32eec3d4 2018-09-20T19:02:42.854+0200 I ACCESS   [conn11] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba3d2c206144c1c 2018-09-20T19:02:48.101+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44676 #12 (5 connections now open)
@400000005ba3d2c20b6c5eac 2018-09-20T19:02:48.191+0200 I ACCESS   [conn12] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba3f0dd0cf86d4c 2018-09-20T21:11:15.216+0200 I NETWORK  [conn4] end connection 127.0.0.1:38310 (4 connections now open)
@400000005ba3f1ac10fda1dc 2018-09-20T21:14:42.284+0200 I NETWORK  [conn9] end connection 127.0.0.1:44632 (1 connection now open)
@400000005ba3f1ac10fdb17c 2018-09-20T21:14:42.284+0200 I NETWORK  [conn11] end connection 127.0.0.1:44648 (2 connections now open)
@400000005ba3f1ac110352e4 2018-09-20T21:14:42.284+0200 I NETWORK  [conn10] end connection 127.0.0.1:44644 (3 connections now open)
@400000005ba3f1ac131e2464 2018-09-20T21:14:42.320+0200 I NETWORK  [conn12] end connection 127.0.0.1:44676 (0 connections now open)
@400000005ba524771906ab6c 2018-09-21T19:03:41.413+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33912 #13 (1 connection now open)
@400000005ba5247719be85d4 2018-09-21T19:03:41.431+0200 I NETWORK  [conn13] received client metadata from 127.0.0.1:33912 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005ba524772b4f70c4 2018-09-21T19:03:41.726+0200 I ACCESS   [conn13] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba524772baf401c 2018-09-21T19:03:41.732+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33916 #14 (2 connections now open)
@400000005ba5247733e7605c 2018-09-21T19:03:41.870+0200 I ACCESS   [conn14] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba52477363196ac 2018-09-21T19:03:41.909+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33920 #15 (3 connections now open)
@400000005ba524780184cd34 2018-09-21T19:03:42.025+0200 I ACCESS   [conn15] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba524a4208fc6fc 2018-09-21T19:04:26.546+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:36254 #16 (4 connections now open)
@400000005ba524a4293b03fc 2018-09-21T19:04:26.691+0200 I ACCESS   [conn16] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba524b3097735cc 2018-09-21T19:04:41.158+0200 I NETWORK  [conn13] end connection 127.0.0.1:33912 (3 connections now open)
@400000005ba524b3097c852c 2018-09-21T19:04:41.159+0200 I NETWORK  [conn14] end connection 127.0.0.1:33916 (2 connections now open)
@400000005ba524b3097d86fc 2018-09-21T19:04:41.159+0200 I NETWORK  [conn15] end connection 127.0.0.1:33920 (1 connection now open)
@400000005ba524b309825d44 2018-09-21T19:04:41.159+0200 I NETWORK  [conn16] end connection 127.0.0.1:36254 (0 connections now open)
@400000005ba52546251acd5c 2018-09-21T19:07:08.622+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44570 #17 (1 connection now open)
@400000005ba525462689882c 2018-09-21T19:07:08.646+0200 I NETWORK  [conn17] received client metadata from 127.0.0.1:44570 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005ba5254630c75f94 2018-09-21T19:07:08.818+0200 I ACCESS   [conn17] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba5254631266b9c 2018-09-21T19:07:08.824+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44582 #18 (2 connections now open)
@400000005ba5254638dc1184 2018-09-21T19:07:08.953+0200 I ACCESS   [conn18] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba52546394e5384 2018-09-21T19:07:08.961+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44594 #19 (3 connections now open)
@400000005ba525470675b1b4 2018-09-21T19:07:09.108+0200 I ACCESS   [conn19] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005ba5255c041ff62c 2018-09-21T19:07:30.068+0200 I NETWORK  [conn17] end connection 127.0.0.1:44570 (2 connections now open)
@400000005ba5255c042368fc 2018-09-21T19:07:30.069+0200 I NETWORK  [conn18] end connection 127.0.0.1:44582 (1 connection now open)
@400000005ba5255c042637bc 2018-09-21T19:07:30.069+0200 I NETWORK  [conn19] end connection 127.0.0.1:44594 (0 connections now open)
@400000005bb34aea232a191c 2018-10-02T12:39:28.587+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53268 #20 (1 connection now open)
@400000005bb34aea2448fa84 2018-10-02T12:39:28.605+0200 I NETWORK  [conn20] received client metadata from 127.0.0.1:53268 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb34aea35d21d44 2018-10-02T12:39:28.902+0200 I COMMAND  [conn20] command admin.system.users command: saslStart { saslStart: 1, mechanism: "SCRAM-SHA-1", payload: "xxx", autoAuthorize: 1, $db: "admin" } numYields:0 reslen:179 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { r: 1 } }, Collection: { acquireCount: { r: 1 } } } protocol:op_query 138ms
@400000005bb34aeb099773b4 2018-10-02T12:39:29.160+0200 I ACCESS   [conn20] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb34aeb09f5108c 2018-10-02T12:39:29.166+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53276 #21 (2 connections now open)
@400000005bb34aeb1108d8f4 2018-10-02T12:39:29.285+0200 I ACCESS   [conn21] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb34aeb114495ec 2018-10-02T12:39:29.289+0200 I COMMAND  [conn20] command local.$cmd command: listCollections { listCollections: true, filter: {}, cursor: {}, $db: "local" } numYields:0 reslen:328 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { R: 1 } } } protocol:op_query 115ms
@400000005bb34aeb13f0f90c 2018-10-02T12:39:29.334+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53278 #22 (3 connections now open)
@400000005bb34aeb1c7d6754 2018-10-02T12:39:29.477+0200 I ACCESS   [conn22] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb34b87360b6d24 2018-10-02T12:42:05.906+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:56618 #23 (4 connections now open)
@400000005bb34b8801d63cdc 2018-10-02T12:42:06.030+0200 I ACCESS   [conn23] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb34bc80a8997fc 2018-10-02T12:43:10.176+0200 I NETWORK  [conn23] end connection 127.0.0.1:56618 (3 connections now open)
@400000005bb34bc80a89a3b4 2018-10-02T12:43:10.176+0200 I NETWORK  [conn22] end connection 127.0.0.1:53278 (2 connections now open)
@400000005bb34bc80ad60a4c 2018-10-02T12:43:10.181+0200 I NETWORK  [conn21] end connection 127.0.0.1:53276 (1 connection now open)
@400000005bb34bc80ae730ec 2018-10-02T12:43:10.181+0200 I NETWORK  [conn20] end connection 127.0.0.1:53268 (0 connections now open)
@400000005bb3e7c429082c5c 2018-10-02T23:48:42.680+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:36700 #24 (1 connection now open)
@400000005bb3e7c42b21fc0c 2018-10-02T23:48:42.723+0200 I NETWORK  [conn24] received client metadata from 127.0.0.1:36700 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb3e7c500afd994 2018-10-02T23:48:43.011+0200 I ACCESS   [conn24] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb3e7c501113f2c 2018-10-02T23:48:43.017+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:36704 #25 (2 connections now open)
@400000005bb3e7c5093110c4 2018-10-02T23:48:43.154+0200 I ACCESS   [conn25] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb3e7c50ad82d2c 2018-10-02T23:48:43.181+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:36708 #26 (3 connections now open)
@400000005bb3e7c511f2d74c 2018-10-02T23:48:43.301+0200 I ACCESS   [conn26] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb3e7ea361f85ac 2018-10-02T23:49:20.907+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:37036 #27 (4 connections now open)
@400000005bb3e7eb01118194 2018-10-02T23:49:21.017+0200 I ACCESS   [conn27] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb3e7f703375b4c 2018-10-02T23:49:33.053+0200 I NETWORK  [conn24] end connection 127.0.0.1:36700 (3 connections now open)
@400000005bb3e7f703376704 2018-10-02T23:49:33.053+0200 I NETWORK  [conn26] end connection 127.0.0.1:36708 (1 connection now open)
@400000005bb3e7f703376aec 2018-10-02T23:49:33.053+0200 I NETWORK  [conn27] end connection 127.0.0.1:37036 (0 connections now open)
@400000005bb3e7f70337f78c 2018-10-02T23:49:33.053+0200 I NETWORK  [conn25] end connection 127.0.0.1:36704 (2 connections now open)
@400000005bb3f9272b2138bc 2018-10-03T01:02:53.723+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:54586 #28 (1 connection now open)
@400000005bb3f9280440bccc 2018-10-03T01:02:54.071+0200 I NETWORK  [conn28] received client metadata from 127.0.0.1:54586 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb3f9280a55f53c 2018-10-03T01:02:54.173+0200 I COMMAND  [conn28] command admin.$cmd command: isMaster { ismaster: true, client: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }, $readPreference: { mode: "secondaryPreferred" }, $db: "admin" } numYields:0 reslen:223 locks:{} protocol:op_query 331ms
@400000005bb3f92819f243ec 2018-10-03T01:02:54.435+0200 I COMMAND  [conn28] command admin.system.users command: saslStart { saslStart: 1, mechanism: "SCRAM-SHA-1", payload: "xxx", autoAuthorize: 1, $db: "admin" } numYields:0 reslen:179 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { r: 1 } }, Collection: { acquireCount: { r: 1 } } } protocol:op_query 178ms
@400000005bb3f92824b168e4 2018-10-03T01:02:54.615+0200 I ACCESS   [conn28] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb3f92826345b7c 2018-10-03T01:02:54.640+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:54606 #29 (2 connections now open)
@400000005bb3f9282fd68754 2018-10-03T01:02:54.802+0200 I ACCESS   [conn29] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb3f92830807f0c 2018-10-03T01:02:54.812+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:54610 #30 (3 connections now open)
@400000005bb3f92838758f54 2018-10-03T01:02:54.947+0200 I ACCESS   [conn30] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb3f9291b76dc64 2018-10-03T01:02:55.460+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:54634 #31 (4 connections now open)
@400000005bb3f929232e0504 2018-10-03T01:02:55.590+0200 I ACCESS   [conn31] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4186225ea3aec 2018-10-03T03:16:08.635+0200 I NETWORK  [conn28] end connection 127.0.0.1:54586 (3 connections now open)
@400000005bb4186225ea46a4 2018-10-03T03:16:08.635+0200 I NETWORK  [conn30] end connection 127.0.0.1:54610 (1 connection now open)
@400000005bb4186225ea4a8c 2018-10-03T03:16:08.635+0200 I NETWORK  [conn31] end connection 127.0.0.1:54634 (2 connections now open)
@400000005bb4186225eb5fe4 2018-10-03T03:16:08.635+0200 I NETWORK  [conn29] end connection 127.0.0.1:54606 (0 connections now open)
@400000005bb4a1781f8129a4 2018-10-03T13:01:02.510+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53816 #32 (1 connection now open)
@400000005bb4a178227d71e4 2018-10-03T13:01:02.578+0200 I NETWORK  [conn32] received client metadata from 127.0.0.1:53816 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4a1783b0440e4 2018-10-03T13:01:02.989+0200 I COMMAND  [conn32] command admin.system.users command: saslStart { saslStart: 1, mechanism: "SCRAM-SHA-1", payload: "xxx", autoAuthorize: 1, $db: "admin" } numYields:0 reslen:179 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { r: 1 } }, Collection: { acquireCount: { r: 1 } } } protocol:op_query 370ms
@400000005bb4a1790c32ac4c 2018-10-03T13:01:03.204+0200 I ACCESS   [conn32] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a1790cb4eff4 2018-10-03T13:01:03.213+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53886 #33 (2 connections now open)
@400000005bb4a1791589e4a4 2018-10-03T13:01:03.361+0200 I ACCESS   [conn33] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a17916c7ee9c 2018-10-03T13:01:03.382+0200 I COMMAND  [conn32] command local.$cmd command: listCollections { listCollections: true, filter: {}, cursor: {}, $db: "local" } numYields:0 reslen:328 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { R: 1 } } } protocol:op_query 156ms
@400000005bb4a1791a2ec81c 2018-10-03T13:01:03.439+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53900 #34 (3 connections now open)
@400000005bb4a17920d29c5c 2018-10-03T13:01:03.550+0200 I ACCESS   [conn34] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a17a0298c1bc 2018-10-03T13:01:04.043+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53942 #35 (4 connections now open)
@400000005bb4a17a0983341c 2018-10-03T13:01:04.159+0200 I ACCESS   [conn35] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a5af0a943e8c 2018-10-03T13:19:01.177+0200 I NETWORK  [conn32] end connection 127.0.0.1:53816 (3 connections now open)
@400000005bb4a5af0a959e1c 2018-10-03T13:19:01.177+0200 I NETWORK  [conn33] end connection 127.0.0.1:53886 (2 connections now open)
@400000005bb4a5af0a95a5ec 2018-10-03T13:19:01.177+0200 I NETWORK  [conn35] end connection 127.0.0.1:53942 (0 connections now open)
@400000005bb4a5af0a9910ec 2018-10-03T13:19:01.177+0200 I NETWORK  [conn34] end connection 127.0.0.1:53900 (1 connection now open)
@400000005bb4a6d40b3b4c2c 2018-10-03T13:23:54.188+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:52196 #36 (1 connection now open)
@400000005bb4a6d40d02f49c 2018-10-03T13:23:54.218+0200 I NETWORK  [conn36] received client metadata from 127.0.0.1:52196 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4a6d41748887c 2018-10-03T13:23:54.390+0200 I ACCESS   [conn36] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a6d417ba70a4 2018-10-03T13:23:54.396+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:52208 #37 (2 connections now open)
@400000005bb4a6d4229416c4 2018-10-03T13:23:54.580+0200 I ACCESS   [conn37] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a6d423123004 2018-10-03T13:23:54.588+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:52214 #38 (3 connections now open)
@400000005bb4a6d4295cad2c 2018-10-03T13:23:54.693+0200 I ACCESS   [conn38] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a6db1b11e0d4 2018-10-03T13:24:01.453+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53170 #39 (4 connections now open)
@400000005bb4a6db20632534 2018-10-03T13:24:01.543+0200 I ACCESS   [conn39] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7042dcd1324 2018-10-03T13:24:42.768+0200 I NETWORK  [conn37] end connection 127.0.0.1:52208 (2 connections now open)
@400000005bb4a7042dcdf1cc 2018-10-03T13:24:42.768+0200 I NETWORK  [conn36] end connection 127.0.0.1:52196 (3 connections now open)
@400000005bb4a7042dcdf99c 2018-10-03T13:24:42.768+0200 I NETWORK  [conn38] end connection 127.0.0.1:52214 (1 connection now open)
@400000005bb4a7042dcdfd84 2018-10-03T13:24:42.768+0200 I NETWORK  [conn39] end connection 127.0.0.1:53170 (0 connections now open)
@400000005bb4a7073824f29c 2018-10-03T13:24:45.941+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:54082 #40 (1 connection now open)
@400000005bb4a70739b73714 2018-10-03T13:24:45.968+0200 I NETWORK  [conn40] received client metadata from 127.0.0.1:54082 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4a70808f77e7c 2018-10-03T13:24:46.150+0200 I ACCESS   [conn40] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a70809be1e24 2018-10-03T13:24:46.163+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:54084 #41 (2 connections now open)
@400000005bb4a708112c4f14 2018-10-03T13:24:46.288+0200 I ACCESS   [conn41] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a70811ac9ad4 2018-10-03T13:24:46.296+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:54090 #42 (3 connections now open)
@400000005bb4a708178581dc 2018-10-03T13:24:46.394+0200 I ACCESS   [conn42] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7082f3f0244 2018-10-03T13:24:46.792+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:54108 #43 (4 connections now open)
@400000005bb4a70834fbd1e4 2018-10-03T13:24:46.888+0200 I ACCESS   [conn43] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7b3209e9bdc 2018-10-03T13:27:37.546+0200 I NETWORK  [conn42] end connection 127.0.0.1:54090 (2 connections now open)
@400000005bb4a7b3209ea794 2018-10-03T13:27:37.546+0200 I NETWORK  [conn41] end connection 127.0.0.1:54084 (1 connection now open)
@400000005bb4a7b3209eab7c 2018-10-03T13:27:37.546+0200 I NETWORK  [conn40] end connection 127.0.0.1:54082 (3 connections now open)
@400000005bb4a7b3209eb34c 2018-10-03T13:27:37.546+0200 I NETWORK  [conn43] end connection 127.0.0.1:54108 (0 connections now open)
@400000005bb4a7b638705764 2018-10-03T13:27:40.946+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58520 #44 (1 connection now open)
@400000005bb4a7b63a5c0a64 2018-10-03T13:27:40.979+0200 I NETWORK  [conn44] received client metadata from 127.0.0.1:58520 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4a7b7093b942c 2018-10-03T13:27:41.154+0200 I ACCESS   [conn44] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7b709b0df84 2018-10-03T13:27:41.162+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58524 #45 (2 connections now open)
@400000005bb4a7b712dc4cec 2018-10-03T13:27:41.316+0200 I ACCESS   [conn45] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7b7134163d4 2018-10-03T13:27:41.322+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58528 #46 (3 connections now open)
@400000005bb4a7b7191a2b9c 2018-10-03T13:27:41.421+0200 I ACCESS   [conn46] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7b736ff2f7c 2018-10-03T13:27:41.922+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58540 #47 (4 connections now open)
@400000005bb4a7b8017e83d4 2018-10-03T13:27:42.025+0200 I ACCESS   [conn47] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7ba2900c5d4 2018-10-03T13:27:44.687+0200 I NETWORK  [conn44] end connection 127.0.0.1:58520 (3 connections now open)
@400000005bb4a7ba2900d18c 2018-10-03T13:27:44.687+0200 I NETWORK  [conn46] end connection 127.0.0.1:58528 (2 connections now open)
@400000005bb4a7ba29026f9c 2018-10-03T13:27:44.687+0200 I NETWORK  [conn47] end connection 127.0.0.1:58540 (1 connection now open)
@400000005bb4a7ba29087e64 2018-10-03T13:27:44.688+0200 I NETWORK  [conn45] end connection 127.0.0.1:58524 (0 connections now open)
@400000005bb4a7c619da7a14 2018-10-03T13:27:56.433+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58842 #48 (1 connection now open)
@400000005bb4a7c61b6c3da4 2018-10-03T13:27:56.460+0200 I NETWORK  [conn48] received client metadata from 127.0.0.1:58842 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4a7c626fd77dc 2018-10-03T13:27:56.653+0200 I ACCESS   [conn48] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7c6275f4ebc 2018-10-03T13:27:56.660+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58844 #49 (2 connections now open)
@400000005bb4a7c62f5948d4 2018-10-03T13:27:56.794+0200 I ACCESS   [conn49] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7c62fbb4aac 2018-10-03T13:27:56.800+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58846 #50 (3 connections now open)
@400000005bb4a7c63635191c 2018-10-03T13:27:56.909+0200 I ACCESS   [conn50] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a7c70058e7c4 2018-10-03T13:27:57.005+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58860 #51 (4 connections now open)
@400000005bb4a7c705079324 2018-10-03T13:27:57.084+0200 I ACCESS   [conn51] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a8221d09b54c 2018-10-03T13:29:28.486+0200 I NETWORK  [conn50] end connection 127.0.0.1:58846 (1 connection now open)
@400000005bb4a8221d09c4ec 2018-10-03T13:29:28.486+0200 I NETWORK  [conn49] end connection 127.0.0.1:58844 (2 connections now open)
@400000005bb4a8221d09ccbc 2018-10-03T13:29:28.486+0200 I NETWORK  [conn51] end connection 127.0.0.1:58860 (0 connections now open)
@400000005bb4a8221d0aab64 2018-10-03T13:29:28.486+0200 I NETWORK  [conn48] end connection 127.0.0.1:58842 (3 connections now open)
@400000005bb4a82522d824a4 2018-10-03T13:29:31.584+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60604 #52 (1 connection now open)
@400000005bb4a825246f916c 2018-10-03T13:29:31.611+0200 I NETWORK  [conn52] received client metadata from 127.0.0.1:60604 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4a8252d97d63c 2018-10-03T13:29:31.764+0200 I ACCESS   [conn52] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a8252deef6ec 2018-10-03T13:29:31.770+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60608 #53 (2 connections now open)
@400000005bb4a825356bc224 2018-10-03T13:29:31.896+0200 I ACCESS   [conn53] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a82535d9aadc 2018-10-03T13:29:31.903+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60614 #54 (3 connections now open)
@400000005bb4a826006b9504 2018-10-03T13:29:32.006+0200 I ACCESS   [conn54] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a82618b0a3fc 2018-10-03T13:29:32.414+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60630 #55 (4 connections now open)
@400000005bb4a8261e02ee14 2018-10-03T13:29:32.503+0200 I ACCESS   [conn55] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a832045baf3c 2018-10-03T13:29:44.072+0200 I NETWORK  [conn52] end connection 127.0.0.1:60604 (3 connections now open)
@400000005bb4a832045bbaf4 2018-10-03T13:29:44.072+0200 I NETWORK  [conn53] end connection 127.0.0.1:60608 (2 connections now open)
@400000005bb4a832045bbedc 2018-10-03T13:29:44.072+0200 I NETWORK  [conn54] end connection 127.0.0.1:60614 (1 connection now open)
@400000005bb4a832045e08cc 2018-10-03T13:29:44.073+0200 I NETWORK  [conn55] end connection 127.0.0.1:60630 (0 connections now open)
@400000005bb4a83525b816fc 2018-10-03T13:29:47.632+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60908 #56 (1 connection now open)
@400000005bb4a83527651b1c 2018-10-03T13:29:47.660+0200 I NETWORK  [conn56] received client metadata from 127.0.0.1:60908 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4a835326ab33c 2018-10-03T13:29:47.845+0200 I ACCESS   [conn56] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a83532bf728c 2018-10-03T13:29:47.851+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60920 #57 (2 connections now open)
@400000005bb4a83539bcad84 2018-10-03T13:29:47.968+0200 I ACCESS   [conn57] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a8353a18f684 2018-10-03T13:29:47.974+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60928 #58 (3 connections now open)
@400000005bb4a83606018b54 2018-10-03T13:29:48.100+0200 I ACCESS   [conn58] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a83838bef84c 2018-10-03T13:29:50.951+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33116 #59 (4 connections now open)
@400000005bb4a83904da4d4c 2018-10-03T13:29:51.081+0200 I ACCESS   [conn59] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a8490bba4be4 2018-10-03T13:30:07.196+0200 I NETWORK  [conn56] end connection 127.0.0.1:60908 (3 connections now open)
@400000005bb4a8490bc079ec 2018-10-03T13:30:07.196+0200 I NETWORK  [conn57] end connection 127.0.0.1:60920 (2 connections now open)
@400000005bb4a8490bc94bbc 2018-10-03T13:30:07.197+0200 I NETWORK  [conn58] end connection 127.0.0.1:60928 (1 connection now open)
@400000005bb4a8490bc95b5c 2018-10-03T13:30:07.197+0200 I NETWORK  [conn59] end connection 127.0.0.1:33116 (0 connections now open)
@400000005bb4a84d32c2be4c 2018-10-03T13:30:11.851+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34128 #60 (1 connection now open)
@400000005bb4a84d34eb7e34 2018-10-03T13:30:11.887+0200 I NETWORK  [conn60] received client metadata from 127.0.0.1:34128 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4a84e03e2879c 2018-10-03T13:30:12.065+0200 I ACCESS   [conn60] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a84e044cede4 2018-10-03T13:30:12.072+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34130 #61 (2 connections now open)
@400000005bb4a84e0b750d54 2018-10-03T13:30:12.192+0200 I ACCESS   [conn61] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a84e0be40f4c 2018-10-03T13:30:12.199+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34136 #62 (3 connections now open)
@400000005bb4a84e1237334c 2018-10-03T13:30:12.305+0200 I ACCESS   [conn62] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a8561a81d1ec 2018-10-03T13:30:20.444+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34344 #63 (4 connections now open)
@400000005bb4a8562127349c 2018-10-03T13:30:20.556+0200 I ACCESS   [conn63] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a88f0b43ef1c 2018-10-03T13:31:17.188+0200 I NETWORK  [conn62] end connection 127.0.0.1:34136 (2 connections now open)
@400000005bb4a88f0b44e14c 2018-10-03T13:31:17.188+0200 I NETWORK  [conn61] end connection 127.0.0.1:34130 (1 connection now open)
@400000005bb4a88f0b44e91c 2018-10-03T13:31:17.188+0200 I NETWORK  [conn60] end connection 127.0.0.1:34128 (3 connections now open)
@400000005bb4a88f0b4a6f2c 2018-10-03T13:31:17.189+0200 I NETWORK  [conn63] end connection 127.0.0.1:34344 (0 connections now open)
@400000005bb4a89218c2479c 2018-10-03T13:31:20.415+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:35872 #64 (1 connection now open)
@400000005bb4a8921b115fec 2018-10-03T13:31:20.454+0200 I NETWORK  [conn64] received client metadata from 127.0.0.1:35872 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4a8922616b5a4 2018-10-03T13:31:20.638+0200 I ACCESS   [conn64] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a892266f419c 2018-10-03T13:31:20.644+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:35886 #65 (2 connections now open)
@400000005bb4a8922d4a0c2c 2018-10-03T13:31:20.759+0200 I ACCESS   [conn65] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a8922da85cb4 2018-10-03T13:31:20.765+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:35888 #66 (3 connections now open)
@400000005bb4a89233abab34 2018-10-03T13:31:20.866+0200 I ACCESS   [conn66] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4a89b0a34c13c 2018-10-03T13:31:29.170+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:36080 #67 (4 connections now open)
@400000005bb4a89b1198e3f4 2018-10-03T13:31:29.295+0200 I ACCESS   [conn67] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bb590c29f5d4 2018-10-03T14:51:27.191+0200 I NETWORK  [conn66] end connection 127.0.0.1:35888 (3 connections now open)
@400000005bb4bb590c2b594c 2018-10-03T14:51:27.191+0200 I NETWORK  [conn65] end connection 127.0.0.1:35886 (1 connection now open)
@400000005bb4bb590c2b611c 2018-10-03T14:51:27.191+0200 I NETWORK  [conn64] end connection 127.0.0.1:35872 (0 connections now open)
@400000005bb4bb590c2b6504 2018-10-03T14:51:27.191+0200 I NETWORK  [conn67] end connection 127.0.0.1:36080 (2 connections now open)
@400000005bb4bb630383874c 2018-10-03T14:51:37.058+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:57994 #68 (1 connection now open)
@400000005bb4bb6304ad2e84 2018-10-03T14:51:37.078+0200 I NETWORK  [conn68] received client metadata from 127.0.0.1:57994 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bb6312c3d34c 2018-10-03T14:51:37.314+0200 I ACCESS   [conn68] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bb63138f87bc 2018-10-03T14:51:37.328+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:57996 #69 (2 connections now open)
@400000005bb4bb631bbd287c 2018-10-03T14:51:37.465+0200 I ACCESS   [conn69] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bb631cf6e0fc 2018-10-03T14:51:37.484+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58000 #70 (3 connections now open)
@400000005bb4bb63250b5854 2018-10-03T14:51:37.621+0200 I ACCESS   [conn70] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bb8e29e5e614 2018-10-03T14:52:20.701+0200 I NETWORK  [conn70] end connection 127.0.0.1:58000 (1 connection now open)
@400000005bb4bb8e29e5f1cc 2018-10-03T14:52:20.701+0200 I NETWORK  [conn68] end connection 127.0.0.1:57994 (2 connections now open)
@400000005bb4bb8e29e5f99c 2018-10-03T14:52:20.701+0200 I NETWORK  [conn69] end connection 127.0.0.1:57996 (0 connections now open)
@400000005bb4bb912bf8b0e4 2018-10-03T14:52:23.737+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58804 #71 (1 connection now open)
@400000005bb4bb912d7c10dc 2018-10-03T14:52:23.762+0200 I NETWORK  [conn71] received client metadata from 127.0.0.1:58804 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bb913745874c 2018-10-03T14:52:23.927+0200 I ACCESS   [conn71] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bb9137b9a9c4 2018-10-03T14:52:23.934+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58806 #72 (2 connections now open)
@400000005bb4bb920686382c 2018-10-03T14:52:24.109+0200 I ACCESS   [conn72] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bb9208034ec4 2018-10-03T14:52:24.134+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58816 #73 (3 connections now open)
@400000005bb4bb920e5ed734 2018-10-03T14:52:24.241+0200 I ACCESS   [conn73] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bb933055d914 2018-10-03T14:52:25.810+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:58838 #74 (4 connections now open)
@400000005bb4bb9336ad5274 2018-10-03T14:52:25.917+0200 I ACCESS   [conn74] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bba5247bc66c 2018-10-03T14:52:43.611+0200 I NETWORK  [conn73] end connection 127.0.0.1:58816 (2 connections now open)
@400000005bb4bba5247bd224 2018-10-03T14:52:43.611+0200 I NETWORK  [conn74] end connection 127.0.0.1:58838 (0 connections now open)
@400000005bb4bba52482c37c 2018-10-03T14:52:43.611+0200 I NETWORK  [conn71] end connection 127.0.0.1:58804 (3 connections now open)
@400000005bb4bba52482c764 2018-10-03T14:52:43.611+0200 I NETWORK  [conn72] end connection 127.0.0.1:58806 (1 connection now open)
@400000005bb4bba822b96974 2018-10-03T14:52:46.582+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:59212 #75 (1 connection now open)
@400000005bb4bba82435a934 2018-10-03T14:52:46.607+0200 I NETWORK  [conn75] received client metadata from 127.0.0.1:59212 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bba82fcc5dc4 2018-10-03T14:52:46.801+0200 I ACCESS   [conn75] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bba83023c8ac 2018-10-03T14:52:46.807+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:59214 #76 (2 connections now open)
@400000005bb4bba83864e5b4 2018-10-03T14:52:46.946+0200 I ACCESS   [conn76] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bba838d2787c 2018-10-03T14:52:46.953+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:59216 #77 (3 connections now open)
@400000005bb4bba903cc7344 2018-10-03T14:52:47.063+0200 I ACCESS   [conn77] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc1e03bafe84 2018-10-03T14:54:44.061+0200 I NETWORK  [conn76] end connection 127.0.0.1:59214 (1 connection now open)
@400000005bb4bc1e03bb0a3c 2018-10-03T14:54:44.061+0200 I NETWORK  [conn75] end connection 127.0.0.1:59212 (2 connections now open)
@400000005bb4bc1e03bb0e24 2018-10-03T14:54:44.061+0200 I NETWORK  [conn77] end connection 127.0.0.1:59216 (0 connections now open)
@400000005bb4bc210859ac24 2018-10-03T14:54:47.140+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34102 #78 (1 connection now open)
@400000005bb4bc2109b74ff4 2018-10-03T14:54:47.162+0200 I NETWORK  [conn78] received client metadata from 127.0.0.1:34102 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bc2112faa28c 2018-10-03T14:54:47.318+0200 I ACCESS   [conn78] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc2113598784 2018-10-03T14:54:47.324+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34104 #79 (2 connections now open)
@400000005bb4bc211b3e53bc 2018-10-03T14:54:47.456+0200 I ACCESS   [conn79] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc211b9e6194 2018-10-03T14:54:47.463+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34108 #80 (3 connections now open)
@400000005bb4bc2121932d3c 2018-10-03T14:54:47.563+0200 I ACCESS   [conn80] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc3827fdbd54 2018-10-03T14:55:10.670+0200 I NETWORK  [conn78] end connection 127.0.0.1:34102 (2 connections now open)
@400000005bb4bc3827fdccf4 2018-10-03T14:55:10.670+0200 I NETWORK  [conn79] end connection 127.0.0.1:34104 (1 connection now open)
@400000005bb4bc3827fdd0dc 2018-10-03T14:55:10.670+0200 I NETWORK  [conn80] end connection 127.0.0.1:34108 (0 connections now open)
@400000005bb4bc3b247221ac 2018-10-03T14:55:13.611+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34842 #81 (1 connection now open)
@400000005bb4bc3b267275ec 2018-10-03T14:55:13.644+0200 I NETWORK  [conn81] received client metadata from 127.0.0.1:34842 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bc3b311e70a4 2018-10-03T14:55:13.824+0200 I ACCESS   [conn81] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc3b34edb49c 2018-10-03T14:55:13.833+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34862 #82 (2 connections now open)
@400000005bb4bc3b3ae02e84 2018-10-03T14:55:13.987+0200 I ACCESS   [conn82] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc3b3b4558f4 2018-10-03T14:55:13.994+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34870 #83 (3 connections now open)
@400000005bb4bc3c07c46d1c 2018-10-03T14:55:14.130+0200 I ACCESS   [conn83] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc4c2578376c 2018-10-03T14:55:30.628+0200 I NETWORK  [conn81] end connection 127.0.0.1:34842 (2 connections now open)
@400000005bb4bc4c2579ecec 2018-10-03T14:55:30.628+0200 I NETWORK  [conn83] end connection 127.0.0.1:34870 (0 connections now open)
@400000005bb4bc4c257d3c94 2018-10-03T14:55:30.628+0200 I NETWORK  [conn82] end connection 127.0.0.1:34862 (1 connection now open)
@400000005bb4bc4f22d267e4 2018-10-03T14:55:33.584+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:35404 #84 (1 connection now open)
@400000005bb4bc4f24362634 2018-10-03T14:55:33.607+0200 I NETWORK  [conn84] received client metadata from 127.0.0.1:35404 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bc4f2d82044c 2018-10-03T14:55:33.763+0200 I ACCESS   [conn84] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc4f2dd80bbc 2018-10-03T14:55:33.768+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:35406 #85 (2 connections now open)
@400000005bb4bc4f35c02f6c 2018-10-03T14:55:33.901+0200 I ACCESS   [conn85] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc4f362682bc 2018-10-03T14:55:33.908+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:35410 #86 (3 connections now open)
@400000005bb4bc500132a9dc 2018-10-03T14:55:34.019+0200 I ACCESS   [conn86] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bc501873a2cc 2018-10-03T14:55:34.410+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:35432 #87 (4 connections now open)
@400000005bb4bc501f7bf1b4 2018-10-03T14:55:34.528+0200 I ACCESS   [conn87] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bd8b05e1265c 2018-10-03T15:00:49.097+0200 I NETWORK  [conn85] end connection 127.0.0.1:35406 (2 connections now open)
@400000005bb4bd8b05e135fc 2018-10-03T15:00:49.097+0200 I NETWORK  [conn84] end connection 127.0.0.1:35404 (3 connections now open)
@400000005bb4bd8b05e13dcc 2018-10-03T15:00:49.097+0200 I NETWORK  [conn86] end connection 127.0.0.1:35410 (1 connection now open)
@400000005bb4bd8b05e141b4 2018-10-03T15:00:49.098+0200 I NETWORK  [conn87] end connection 127.0.0.1:35432 (0 connections now open)
@400000005bb4bd8e3303edcc 2018-10-03T15:00:52.855+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44124 #88 (1 connection now open)
@400000005bb4bd8e347b47a4 2018-10-03T15:00:52.880+0200 I NETWORK  [conn88] received client metadata from 127.0.0.1:44124 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bd8f04770f0c 2018-10-03T15:00:53.074+0200 I ACCESS   [conn88] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bd8f04cf8394 2018-10-03T15:00:53.080+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44126 #89 (2 connections now open)
@400000005bb4bd8f0d01c7d4 2018-10-03T15:00:53.218+0200 I ACCESS   [conn89] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bd8f0d7d02b4 2018-10-03T15:00:53.226+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44130 #90 (3 connections now open)
@400000005bb4bd8f12bbd854 2018-10-03T15:00:53.314+0200 I ACCESS   [conn90] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bd9111740a5c 2018-10-03T15:00:55.292+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:44152 #91 (4 connections now open)
@400000005bb4bd911ae254f4 2018-10-03T15:00:55.450+0200 I ACCESS   [conn91] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bdc22bfd8344 2018-10-03T15:01:44.736+0200 I NETWORK  [conn88] end connection 127.0.0.1:44124 (3 connections now open)
@400000005bb4bdc22bfd8efc 2018-10-03T15:01:44.736+0200 I NETWORK  [conn90] end connection 127.0.0.1:44130 (0 connections now open)
@400000005bb4bdc22c01adac 2018-10-03T15:01:44.736+0200 I NETWORK  [conn89] end connection 127.0.0.1:44126 (2 connections now open)
@400000005bb4bdc22c01b57c 2018-10-03T15:01:44.736+0200 I NETWORK  [conn91] end connection 127.0.0.1:44152 (1 connection now open)
@400000005bb4bdc617c2254c 2018-10-03T15:01:48.398+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:45468 #92 (1 connection now open)
@400000005bb4bdc6197599dc 2018-10-03T15:01:48.427+0200 I NETWORK  [conn92] received client metadata from 127.0.0.1:45468 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bdc6244c2ed4 2018-10-03T15:01:48.608+0200 I ACCESS   [conn92] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bdc624c1f72c 2018-10-03T15:01:48.616+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:45470 #93 (2 connections now open)
@400000005bb4bdc62bd23d24 2018-10-03T15:01:48.735+0200 I ACCESS   [conn93] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bdc62c2fc674 2018-10-03T15:01:48.741+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:45472 #94 (3 connections now open)
@400000005bb4bdc63316933c 2018-10-03T15:01:48.856+0200 I ACCESS   [conn94] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bdc713212204 2018-10-03T15:01:49.320+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:45488 #95 (4 connections now open)
@400000005bb4bdc71a5a6044 2018-10-03T15:01:49.442+0200 I ACCESS   [conn95] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bde01a8dd424 2018-10-03T15:02:14.445+0200 I NETWORK  [conn92] end connection 127.0.0.1:45468 (3 connections now open)
@400000005bb4bde01a8ddfdc 2018-10-03T15:02:14.445+0200 I NETWORK  [conn93] end connection 127.0.0.1:45470 (1 connection now open)
@400000005bb4bde01a8def7c 2018-10-03T15:02:14.445+0200 I NETWORK  [conn95] end connection 127.0.0.1:45488 (2 connections now open)
@400000005bb4bde01a8df74c 2018-10-03T15:02:14.445+0200 I NETWORK  [conn94] end connection 127.0.0.1:45472 (0 connections now open)
@400000005bb4bde31611f894 2018-10-03T15:02:17.370+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:46662 #96 (1 connection now open)
@400000005bb4bde317ffb704 2018-10-03T15:02:17.402+0200 I NETWORK  [conn96] received client metadata from 127.0.0.1:46662 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bde32602e36c 2018-10-03T15:02:17.637+0200 I ACCESS   [conn96] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bde32662494c 2018-10-03T15:02:17.643+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:46682 #97 (2 connections now open)
@400000005bb4bde33008d63c 2018-10-03T15:02:17.805+0200 I ACCESS   [conn97] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bde3308b3154 2018-10-03T15:02:17.814+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:46686 #98 (3 connections now open)
@400000005bb4bde3363c77d4 2018-10-03T15:02:17.909+0200 I ACCESS   [conn98] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bde406715c54 2018-10-03T15:02:18.107+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:46696 #99 (4 connections now open)
@400000005bb4bde40bfd2cfc 2018-10-03T15:02:18.201+0200 I ACCESS   [conn99] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bfe508ea209c 2018-10-03T15:10:51.149+0200 I NETWORK  [conn97] end connection 127.0.0.1:46682 (2 connections now open)
@400000005bb4bfe508eb226c 2018-10-03T15:10:51.149+0200 I NETWORK  [conn99] end connection 127.0.0.1:46696 (0 connections now open)
@400000005bb4bfe508edf12c 2018-10-03T15:10:51.149+0200 I NETWORK  [conn98] end connection 127.0.0.1:46686 (1 connection now open)
@400000005bb4bfe508edf8fc 2018-10-03T15:10:51.149+0200 I NETWORK  [conn96] end connection 127.0.0.1:46662 (3 connections now open)
@400000005bb4bfe81ec88804 2018-10-03T15:10:54.516+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60040 #100 (1 connection now open)
@400000005bb4bfe820cd9734 2018-10-03T15:10:54.550+0200 I NETWORK  [conn100] received client metadata from 127.0.0.1:60040 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4bfe82bb83514 2018-10-03T15:10:54.733+0200 I ACCESS   [conn100] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bfe82c20a75c 2018-10-03T15:10:54.740+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60044 #101 (2 connections now open)
@400000005bb4bfe83651bd24 2018-10-03T15:10:54.911+0200 I ACCESS   [conn101] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bfe836cbe2ac 2018-10-03T15:10:54.919+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60046 #102 (3 connections now open)
@400000005bb4bfe900ebec7c 2018-10-03T15:10:55.015+0200 I ACCESS   [conn102] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bfec016adc94 2018-10-03T15:10:58.022+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60084 #103 (4 connections now open)
@400000005bb4bfec0aafb5cc 2018-10-03T15:10:58.179+0200 I ACCESS   [conn103] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4bfff15c8511c 2018-10-03T15:11:17.364+0200 I NETWORK  [conn100] end connection 127.0.0.1:60040 (3 connections now open)
@400000005bb4bfff15c858ec 2018-10-03T15:11:17.364+0200 I NETWORK  [conn101] end connection 127.0.0.1:60044 (2 connections now open)
@400000005bb4bfff15c85cd4 2018-10-03T15:11:17.364+0200 I NETWORK  [conn102] end connection 127.0.0.1:60046 (1 connection now open)
@400000005bb4bfff15c860bc 2018-10-03T15:11:17.364+0200 I NETWORK  [conn103] end connection 127.0.0.1:60084 (0 connections now open)
@400000005bb4c0022d34b73c 2018-10-03T15:11:20.758+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60742 #104 (1 connection now open)
@400000005bb4c0022ebef11c 2018-10-03T15:11:20.784+0200 I NETWORK  [conn104] received client metadata from 127.0.0.1:60742 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4c0030062abc4 2018-10-03T15:11:21.006+0200 I ACCESS   [conn104] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c0030113d354 2018-10-03T15:11:21.017+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60746 #105 (2 connections now open)
@400000005bb4c0030ce97d14 2018-10-03T15:11:21.216+0200 I ACCESS   [conn105] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c0030e25066c 2018-10-03T15:11:21.234+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60754 #106 (3 connections now open)
@400000005bb4c00314326af4 2018-10-03T15:11:21.338+0200 I ACCESS   [conn106] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c0092a16ba14 2018-10-03T15:11:27.705+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60846 #107 (4 connections now open)
@400000005bb4c0093076269c 2018-10-03T15:11:27.812+0200 I ACCESS   [conn107] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c01621b3eff4 2018-10-03T15:11:40.565+0200 I NETWORK  [conn105] end connection 127.0.0.1:60746 (3 connections now open)
@400000005bb4c01621bc0644 2018-10-03T15:11:40.565+0200 I NETWORK  [conn104] end connection 127.0.0.1:60742 (2 connections now open)
@400000005bb4c01621bc15e4 2018-10-03T15:11:40.565+0200 I NETWORK  [conn106] end connection 127.0.0.1:60754 (1 connection now open)
@400000005bb4c01621bcc1c4 2018-10-03T15:11:40.565+0200 I NETWORK  [conn107] end connection 127.0.0.1:60846 (0 connections now open)
@400000005bb4c0193730d66c 2018-10-03T15:11:43.925+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33386 #108 (1 connection now open)
@400000005bb4c01938ee68d4 2018-10-03T15:11:43.955+0200 I NETWORK  [conn108] received client metadata from 127.0.0.1:33386 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4c01a08217d54 2018-10-03T15:11:44.136+0200 I ACCESS   [conn108] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c01a087e202c 2018-10-03T15:11:44.142+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33388 #109 (2 connections now open)
@400000005bb4c01a0f035c64 2018-10-03T15:11:44.251+0200 I ACCESS   [conn109] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c01a0f6a7ebc 2018-10-03T15:11:44.258+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33390 #110 (3 connections now open)
@400000005bb4c01a1609bb34 2018-10-03T15:11:44.369+0200 I ACCESS   [conn110] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c01a289cdf9c 2018-10-03T15:11:44.681+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33404 #111 (4 connections now open)
@400000005bb4c01a2ed6a384 2018-10-03T15:11:44.785+0200 I ACCESS   [conn111] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c0552341e6dc 2018-10-03T15:12:43.591+0200 I NETWORK  [conn108] end connection 127.0.0.1:33386 (3 connections now open)
@400000005bb4c0552343001c 2018-10-03T15:12:43.591+0200 I NETWORK  [conn110] end connection 127.0.0.1:33390 (2 connections now open)
@400000005bb4c05523430404 2018-10-03T15:12:43.591+0200 I NETWORK  [conn109] end connection 127.0.0.1:33388 (1 connection now open)
@400000005bb4c055234365ac 2018-10-03T15:12:43.591+0200 I NETWORK  [conn111] end connection 127.0.0.1:33404 (0 connections now open)
@400000005bb4c0582cfcedfc 2018-10-03T15:12:46.754+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34310 #112 (1 connection now open)
@400000005bb4c0582ebb9d8c 2018-10-03T15:12:46.783+0200 I NETWORK  [conn112] received client metadata from 127.0.0.1:34310 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4c05838260024 2018-10-03T15:12:46.941+0200 I ACCESS   [conn112] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c058387b7edc 2018-10-03T15:12:46.947+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34312 #113 (2 connections now open)
@400000005bb4c059041017ac 2018-10-03T15:12:47.068+0200 I ACCESS   [conn113] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c0590475d2a4 2018-10-03T15:12:47.074+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34314 #114 (3 connections now open)
@400000005bb4c0590b3b1194 2018-10-03T15:12:47.188+0200 I ACCESS   [conn114] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c06638311414 2018-10-03T15:13:00.942+0200 I NETWORK  [conn112] end connection 127.0.0.1:34310 (2 connections now open)
@400000005bb4c06638311fcc 2018-10-03T15:13:00.942+0200 I NETWORK  [conn114] end connection 127.0.0.1:34314 (0 connections now open)
@400000005bb4c0663831f2bc 2018-10-03T15:13:00.942+0200 I NETWORK  [conn113] end connection 127.0.0.1:34312 (1 connection now open)
@400000005bb4c06a1874b43c 2018-10-03T15:13:04.410+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34918 #115 (1 connection now open)
@400000005bb4c06a19fddcac 2018-10-03T15:13:04.436+0200 I NETWORK  [conn115] received client metadata from 127.0.0.1:34918 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4c06a24089624 2018-10-03T15:13:04.604+0200 I ACCESS   [conn115] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c06a24709724 2018-10-03T15:13:04.611+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34922 #116 (2 connections now open)
@400000005bb4c06a2c2ec0bc 2018-10-03T15:13:04.741+0200 I ACCESS   [conn116] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c06a2c9d45b4 2018-10-03T15:13:04.748+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34924 #117 (3 connections now open)
@400000005bb4c06a327f92fc 2018-10-03T15:13:04.847+0200 I ACCESS   [conn117] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c06b0c7ec4c4 2018-10-03T15:13:05.209+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34980 #118 (4 connections now open)
@400000005bb4c06b148891a4 2018-10-03T15:13:05.344+0200 I ACCESS   [conn118] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4c4df2211e6a4 2018-10-03T15:32:05.569+0200 I NETWORK  [conn117] end connection 127.0.0.1:34924 (1 connection now open)
@400000005bb4c4df2211f644 2018-10-03T15:32:05.569+0200 I NETWORK  [conn115] end connection 127.0.0.1:34918 (3 connections now open)
@400000005bb4c4df2211fe14 2018-10-03T15:32:05.569+0200 I NETWORK  [conn116] end connection 127.0.0.1:34922 (2 connections now open)
@400000005bb4c4df221209cc 2018-10-03T15:32:05.569+0200 I NETWORK  [conn118] end connection 127.0.0.1:34980 (0 connections now open)
@400000005bb4ca083b329ffc 2018-10-03T15:54:06.992+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:43048 #119 (1 connection now open)
@400000005bb4ca0901a5804c 2018-10-03T15:54:07.027+0200 I NETWORK  [conn119] received client metadata from 127.0.0.1:43048 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4ca090bdf063c 2018-10-03T15:54:07.199+0200 I ACCESS   [conn119] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4ca090c4f9e74 2018-10-03T15:54:07.206+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:43056 #120 (2 connections now open)
@400000005bb4ca0914dab4fc 2018-10-03T15:54:07.349+0200 I ACCESS   [conn120] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4ca09153dd014 2018-10-03T15:54:07.356+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:43058 #121 (3 connections now open)
@400000005bb4ca091b4aa02c 2018-10-03T15:54:07.457+0200 I ACCESS   [conn121] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4ca0d032e27d4 2018-10-03T15:54:11.053+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:43120 #122 (4 connections now open)
@400000005bb4ca0d083d42b4 2018-10-03T15:54:11.138+0200 I ACCESS   [conn122] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4ca1f0672c3b4 2018-10-03T15:54:29.106+0200 I NETWORK  [conn120] end connection 127.0.0.1:43056 (2 connections now open)
@400000005bb4ca1f0672cf6c 2018-10-03T15:54:29.106+0200 I NETWORK  [conn122] end connection 127.0.0.1:43120 (1 connection now open)
@400000005bb4ca1f0673e4c4 2018-10-03T15:54:29.108+0200 I NETWORK  [conn121] end connection 127.0.0.1:43058 (0 connections now open)
@400000005bb4ca1f06780b44 2018-10-03T15:54:29.106+0200 I NETWORK  [conn119] end connection 127.0.0.1:43048 (3 connections now open)
@400000005bb4e5fa39176cd4 2018-10-03T17:53:20.957+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:39068 #123 (1 connection now open)
@400000005bb4e5fa3a49b314 2018-10-03T17:53:20.977+0200 I NETWORK  [conn123] received client metadata from 127.0.0.1:39068 conn: { application: { name: "MongoDB Shell" }, driver: { name: "MongoDB Internal Client", version: "3.6.3" }, os: { type: "Linux", name: "CentOS release 6.10 (Final)", architecture: "x86_64", version: "Kernel 2.6.32-696.18.7.el6.x86_64" } }
@400000005bb4e5fb0bd7d27c 2018-10-03T17:53:21.198+0200 I COMMAND  [conn123] command admin.system.users appName: "MongoDB Shell" command: saslStart { saslStart: 1, mechanism: "SCRAM-SHA-1", payload: "xxx", $db: "admin" } numYields:0 reslen:164 locks:{ Global: { acquireCount: { r: 2 } }, Database: { acquireCount: { r: 1 } }, Collection: { acquireCount: { r: 1 } } } protocol:op_msg 160ms
@400000005bb4e5fb0de90edc 2018-10-03T17:53:21.233+0200 I ACCESS   [conn123] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4e63604f16374 2018-10-03T17:54:20.082+0200 I NETWORK  [conn123] end connection 127.0.0.1:39068 (0 connections now open)
@400000005bb4ec8a2e98082c 2018-10-03T18:21:20.781+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60254 #124 (1 connection now open)
@400000005bb4ec8a2fb0fdf4 2018-10-03T18:21:20.800+0200 I NETWORK  [conn124] received client metadata from 127.0.0.1:60254 conn: { driver: { name: "nodejs", version: "2.2.24" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 2.1.8" }
@400000005bb4ec8a3a45de9c 2018-10-03T18:21:20.977+0200 I ACCESS   [conn124] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4ec8a3a9fd1f4 2018-10-03T18:21:20.983+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60262 #125 (2 connections now open)
@400000005bb4ec8b078b250c 2018-10-03T18:21:21.126+0200 I ACCESS   [conn125] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4ec8b09efd0cc 2018-10-03T18:21:21.166+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60274 #126 (3 connections now open)
@400000005bb4ec8b0fe000c4 2018-10-03T18:21:21.266+0200 I ACCESS   [conn126] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4ec970be15be4 2018-10-03T18:21:33.199+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60634 #127 (4 connections now open)
@400000005bb4ec97129c658c 2018-10-03T18:21:33.312+0200 I ACCESS   [conn127] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4ed103a932bac 2018-10-03T18:23:34.982+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:35782 #128 (5 connections now open)
@400000005bb4ed103b234e1c 2018-10-03T18:23:34.992+0200 I NETWORK  [conn128] received client metadata from 127.0.0.1:35782 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4ed110352c6d4 2018-10-03T18:23:35.055+0200 I NETWORK  [conn128] end connection 127.0.0.1:35782 (4 connections now open)
@400000005bb4ed452ab7a17c 2018-10-03T18:24:27.716+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:37532 #129 (5 connections now open)
@400000005bb4ed452b3cb3e4 2018-10-03T18:24:27.725+0200 I NETWORK  [conn129] received client metadata from 127.0.0.1:37532 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4ed452c54fdcc 2018-10-03T18:24:27.743+0200 I NETWORK  [conn129] end connection 127.0.0.1:37532 (4 connections now open)
@400000005bb4ede5238066dc 2018-10-03T18:27:07.595+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:41924 #130 (5 connections now open)
@400000005bb4ede52419fb44 2018-10-03T18:27:07.605+0200 I NETWORK  [conn130] received client metadata from 127.0.0.1:41924 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4ede5256cd944 2018-10-03T18:27:07.627+0200 I NETWORK  [conn130] end connection 127.0.0.1:41924 (4 connections now open)
@400000005bb4ee1e1e5afd0c 2018-10-03T18:28:04.508+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:43038 #131 (5 connections now open)
@400000005bb4ee1e1eedc344 2018-10-03T18:28:04.518+0200 I NETWORK  [conn131] received client metadata from 127.0.0.1:43038 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4ee1e1fd4f2dc 2018-10-03T18:28:04.533+0200 I ACCESS   [conn131] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:43038 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4ee1e200c8184 2018-10-03T18:28:04.537+0200 I NETWORK  [conn131] end connection 127.0.0.1:43038 (4 connections now open)
@400000005bb4ee723afe592c 2018-10-03T18:29:28.989+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:46060 #132 (5 connections now open)
@400000005bb4ee73001e99fc 2018-10-03T18:29:29.001+0200 I NETWORK  [conn132] received client metadata from 127.0.0.1:46060 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4ee730161fb24 2018-10-03T18:29:29.023+0200 I ACCESS   [conn132] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:46060 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4ee7301a31334 2018-10-03T18:29:29.027+0200 I NETWORK  [conn132] end connection 127.0.0.1:46060 (4 connections now open)
@400000005bb4eed00227a0cc 2018-10-03T18:31:02.035+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:49124 #133 (5 connections now open)
@400000005bb4eed0031661e4 2018-10-03T18:31:02.051+0200 I NETWORK  [conn133] received client metadata from 127.0.0.1:49124 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4eed004041d44 2018-10-03T18:31:02.067+0200 I ACCESS   [conn133] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:49124 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4eed004ada3b4 2018-10-03T18:31:02.078+0200 I NETWORK  [conn133] end connection 127.0.0.1:49124 (4 connections now open)
@400000005bb4ef3838d4938c 2018-10-03T18:32:46.953+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:52284 #134 (5 connections now open)
@400000005bb4ef3839845f74 2018-10-03T18:32:46.964+0200 I NETWORK  [conn134] received client metadata from 127.0.0.1:52284 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4ef383a7c484c 2018-10-03T18:32:46.981+0200 I ACCESS   [conn134] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:52284 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4ef383ab4ec4c 2018-10-03T18:32:46.984+0200 I NETWORK  [conn134] end connection 127.0.0.1:52284 (4 connections now open)
@400000005bb4ef403692f85c 2018-10-03T18:32:54.915+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:52552 #135 (5 connections now open)
@400000005bb4ef40373ec8bc 2018-10-03T18:32:54.926+0200 I NETWORK  [conn135] received client metadata from 127.0.0.1:52552 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4ef4038236814 2018-10-03T18:32:54.941+0200 I ACCESS   [conn135] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:52552 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4ef40385d969c 2018-10-03T18:32:54.945+0200 I NETWORK  [conn135] end connection 127.0.0.1:52552 (4 connections now open)
@400000005bb4efa105e4cbf4 2018-10-03T18:34:31.098+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:56262 #136 (5 connections now open)
@400000005bb4efa106bf803c 2018-10-03T18:34:31.113+0200 I NETWORK  [conn136] received client metadata from 127.0.0.1:56262 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4efa107f58f3c 2018-10-03T18:34:31.133+0200 I ACCESS   [conn136] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:56262 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4efa10975b6fc 2018-10-03T18:34:31.139+0200 I NETWORK  [conn136] end connection 127.0.0.1:56262 (4 connections now open)
@400000005bb4efab13b7a15c 2018-10-03T18:34:41.330+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:56786 #137 (5 connections now open)
@400000005bb4efab144f8fe4 2018-10-03T18:34:41.340+0200 I NETWORK  [conn137] received client metadata from 127.0.0.1:56786 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4efab152f4d3c 2018-10-03T18:34:41.355+0200 I ACCESS   [conn137] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:56786 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4efab15733bdc 2018-10-03T18:34:41.359+0200 I NETWORK  [conn137] end connection 127.0.0.1:56786 (4 connections now open)
@400000005bb4f21b2726a2ec 2018-10-03T18:45:05.656+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:51024 #138 (5 connections now open)
@400000005bb4f21b27b83c5c 2018-10-03T18:45:05.666+0200 I NETWORK  [conn138] received client metadata from 127.0.0.1:51024 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f21b2891eed4 2018-10-03T18:45:05.680+0200 I ACCESS   [conn138] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:51024 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f21b28c9c3cc 2018-10-03T18:45:05.684+0200 I NETWORK  [conn138] end connection 127.0.0.1:51024 (4 connections now open)
@400000005bb4f22338ce88ac 2018-10-03T18:45:13.952+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:51194 #139 (5 connections now open)
@400000005bb4f2233962837c 2018-10-03T18:45:13.962+0200 I NETWORK  [conn139] received client metadata from 127.0.0.1:51194 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f2233a3396ec 2018-10-03T18:45:13.976+0200 I ACCESS   [conn139] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:51194 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f2233a69933c 2018-10-03T18:45:13.979+0200 I NETWORK  [conn139] end connection 127.0.0.1:51194 (4 connections now open)
@400000005bb4f28037bd89f4 2018-10-03T18:46:46.934+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53224 #140 (5 connections now open)
@400000005bb4f280391b220c 2018-10-03T18:46:46.958+0200 I NETWORK  [conn140] received client metadata from 127.0.0.1:53224 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f28039f699a4 2018-10-03T18:46:46.972+0200 I ACCESS   [conn140] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:53224 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f2803a3567c4 2018-10-03T18:46:46.976+0200 I NETWORK  [conn140] end connection 127.0.0.1:53224 (4 connections now open)
@400000005bb4f2882809bba4 2018-10-03T18:46:54.671+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:53372 #141 (5 connections now open)
@400000005bb4f288289c08c4 2018-10-03T18:46:54.681+0200 I NETWORK  [conn141] received client metadata from 127.0.0.1:53372 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f2882985824c 2018-10-03T18:46:54.696+0200 I ACCESS   [conn141] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:53372 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f28829c48334 2018-10-03T18:46:54.700+0200 I NETWORK  [conn141] end connection 127.0.0.1:53372 (4 connections now open)
@400000005bb4f2c71920de74 2018-10-03T18:47:57.421+0200 I ACCESS   [conn125] Unauthorized: not authorized on config to execute command { find: "system.sessions", filter: {}, sort: {}, projection: {}, limit: 10, $db: "config" }
@400000005bb4f2c72283f5dc 2018-10-03T18:47:57.578+0200 I ACCESS   [conn124] Unauthorized: not authorized on config to execute command { count: "system.sessions", query: {}, $db: "config" }
@400000005bb4f31a07f7c5a4 2018-10-03T18:49:20.133+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:56920 #142 (5 connections now open)
@400000005bb4f31a0882eabc 2018-10-03T18:49:20.142+0200 I NETWORK  [conn142] received client metadata from 127.0.0.1:56920 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f31a0951bc0c 2018-10-03T18:49:20.156+0200 I ACCESS   [conn142] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:56920 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f31a09898934 2018-10-03T18:49:20.159+0200 I NETWORK  [conn142] end connection 127.0.0.1:56920 (4 connections now open)
@400000005bb4f3352db0115c 2018-10-03T18:49:47.766+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:57622 #143 (5 connections now open)
@400000005bb4f3352e6ecd7c 2018-10-03T18:49:47.778+0200 I NETWORK  [conn143] received client metadata from 127.0.0.1:57622 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f3352f625d0c 2018-10-03T18:49:47.794+0200 I ACCESS   [conn143] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:57622 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f3352fa65f34 2018-10-03T18:49:47.799+0200 I NETWORK  [conn143] end connection 127.0.0.1:57622 (4 connections now open)
@400000005bb4f38a04d09504 2018-10-03T18:51:12.080+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:60110 #144 (5 connections now open)
@400000005bb4f38a055e9c64 2018-10-03T18:51:12.090+0200 I NETWORK  [conn144] received client metadata from 127.0.0.1:60110 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f38a066e56e4 2018-10-03T18:51:12.107+0200 I ACCESS   [conn144] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:60110 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f38a06ae7cc4 2018-10-03T18:51:12.112+0200 I NETWORK  [conn144] end connection 127.0.0.1:60110 (4 connections now open)
@400000005bb4f3b71c8c8e3c 2018-10-03T18:51:57.478+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33034 #145 (5 connections now open)
@400000005bb4f3b71e405ca4 2018-10-03T18:51:57.507+0200 I NETWORK  [conn145] received client metadata from 127.0.0.1:33034 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f3b71f9a7a1c 2018-10-03T18:51:57.530+0200 I ACCESS   [conn145] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:33034 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f3b71fd8e694 2018-10-03T18:51:57.534+0200 I NETWORK  [conn145] end connection 127.0.0.1:33034 (4 connections now open)
@400000005bb4f3be3973c18c 2018-10-03T18:52:04.963+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:33296 #146 (5 connections now open)
@400000005bb4f3be3a01fbb4 2018-10-03T18:52:04.973+0200 I NETWORK  [conn146] received client metadata from 127.0.0.1:33296 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f3be3ad3036c 2018-10-03T18:52:04.986+0200 I ACCESS   [conn146] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:33296 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f3be3b08d8ac 2018-10-03T18:52:04.990+0200 I NETWORK  [conn146] end connection 127.0.0.1:33296 (4 connections now open)
@400000005bb4f3e73820c834 2018-10-03T18:52:45.941+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:34414 #147 (5 connections now open)
@400000005bb4f3e738b2946c 2018-10-03T18:52:45.951+0200 I NETWORK  [conn147] received client metadata from 127.0.0.1:34414 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f3e7397484dc 2018-10-03T18:52:45.963+0200 I ACCESS   [conn147] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:34414 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f3e739aaa83c 2018-10-03T18:52:45.967+0200 I NETWORK  [conn147] end connection 127.0.0.1:34414 (4 connections now open)
@400000005bb4f44818212984 2018-10-03T18:54:22.404+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:36098 #148 (5 connections now open)
@400000005bb4f4481823fc2c 2018-10-03T18:54:22.404+0200 I NETWORK  [conn148] received client metadata from 127.0.0.1:36098 conn: { application: { name: "MongoDB Shell" }, driver: { name: "MongoDB Internal Client", version: "3.6.3" }, os: { type: "Linux", name: "CentOS release 6.10 (Final)", architecture: "x86_64", version: "Kernel 2.6.32-696.18.7.el6.x86_64" } }
@400000005bb4f448194d0724 2018-10-03T18:54:22.424+0200 I ACCESS   [conn148] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4f4ec11789284 2018-10-03T18:57:06.292+0200 I NETWORK  [conn148] end connection 127.0.0.1:36098 (4 connections now open)
@400000005bb4f56018e0a50c 2018-10-03T18:59:02.417+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:42085 #149 (5 connections now open)
@400000005bb4f56018e4c3bc 2018-10-03T18:59:02.417+0200 I NETWORK  [conn149] received client metadata from 127.0.0.1:42085 conn: { application: { name: "MongoDB Shell" }, driver: { name: "MongoDB Internal Client", version: "3.6.3" }, os: { type: "Linux", name: "CentOS release 6.10 (Final)", architecture: "x86_64", version: "Kernel 2.6.32-696.18.7.el6.x86_64" } }
@400000005bb4f5601a258504 2018-10-03T18:59:02.438+0200 I ACCESS   [conn149] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4f5663b637bcc 2018-10-03T18:59:08.996+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:42270 #150 (6 connections now open)
@400000005bb4f5663b6bb92c 2018-10-03T18:59:08.996+0200 I NETWORK  [conn150] received client metadata from 127.0.0.1:42270 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f56700ee848c 2018-10-03T18:59:09.015+0200 I ACCESS   [conn150] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:42270 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f567016b2e9c 2018-10-03T18:59:09.023+0200 I NETWORK  [conn150] end connection 127.0.0.1:42270 (5 connections now open)
@400000005bb4f56e10b37594 2018-10-03T18:59:16.279+0200 I NETWORK  [conn149] end connection 127.0.0.1:42085 (4 connections now open)
@400000005bb4f61c385bfc74 2018-10-03T19:02:10.945+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:47886 #151 (5 connections now open)
@400000005bb4f61c395c6ce4 2018-10-03T19:02:10.962+0200 I NETWORK  [conn151] received client metadata from 127.0.0.1:47886 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f61c3a3e648c 2018-10-03T19:02:10.977+0200 I ACCESS   [conn151] SCRAM-SHA-1 authentication failed for learnapp_mongoadmin on users from client 127.0.0.1:47886 ; UserNotFound: Could not find user learnapp_mongoadmin@users
@400000005bb4f61c3a853574 2018-10-03T19:02:10.981+0200 I NETWORK  [conn151] end connection 127.0.0.1:47886 (4 connections now open)
@400000005bb4f62f12fab22c 2018-10-03T19:02:29.318+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:48514 #152 (5 connections now open)
@400000005bb4f62f13e47dbc 2018-10-03T19:02:29.333+0200 I NETWORK  [conn152] received client metadata from 127.0.0.1:48514 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f62f165a1d54 2018-10-03T19:02:29.374+0200 I ACCESS   [conn152] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4f6420cf19f1c 2018-10-03T19:02:48.216+0200 I NETWORK  [conn152] end connection 127.0.0.1:48514 (4 connections now open)
@400000005bb4f64a239b035c 2018-10-03T19:02:56.597+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:49282 #153 (5 connections now open)
@400000005bb4f64a2435dbfc 2018-10-03T19:02:56.607+0200 I NETWORK  [conn153] received client metadata from 127.0.0.1:49282 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f64a25e8180c 2018-10-03T19:02:56.635+0200 I ACCESS   [conn153] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4f65609b4fe34 2018-10-03T19:03:08.162+0200 I NETWORK  [conn153] end connection 127.0.0.1:49282 (4 connections now open)
@400000005bb4f65c06570df4 2018-10-03T19:03:14.106+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:49686 #154 (5 connections now open)
@400000005bb4f65c06f55194 2018-10-03T19:03:14.116+0200 I NETWORK  [conn154] received client metadata from 127.0.0.1:49686 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f65c08fe96e4 2018-10-03T19:03:14.150+0200 I ACCESS   [conn154] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4f65f1225f924 2018-10-03T19:03:17.304+0200 I NETWORK  [conn154] end connection 127.0.0.1:49686 (4 connections now open)
@400000005bb4f660255d3174 2018-10-03T19:03:18.626+0200 I NETWORK  [listener] connection accepted from 127.0.0.1:49800 #155 (5 connections now open)
@400000005bb4f66026036c24 2018-10-03T19:03:18.637+0200 I NETWORK  [conn155] received client metadata from 127.0.0.1:49800 conn: { driver: { name: "nodejs", version: "3.1.4" }, os: { type: "Linux", name: "linux", architecture: "x64", version: "2.6.32-696.18.7.el6.x86_64" }, platform: "Node.js v8.12.0, LE, mongodb-core: 3.1.3" }
@400000005bb4f66027da33ac 2018-10-03T19:03:18.668+0200 I ACCESS   [conn155] Successfully authenticated as principal learnapp_mongoadmin on admin
@400000005bb4f67835e6262c 2018-10-03T19:03:42.904+0200 I NETWORK  [conn155] end connection 127.0.0.1:49800 (4 connections now open)
