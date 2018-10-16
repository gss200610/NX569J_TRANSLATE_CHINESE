.class public Lcn/nubia/upgrade/api/NubiaUpgradeManager;
.super Ljava/lang/Object;
.source "NubiaUpgradeManager.java"


# static fields
.field private static final SILENT_DOWNLOAD:I = 0x1

.field private static final SILENT_UPGRADE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NubiaUpgradeManager"

.field private static sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;


# instance fields
.field private defaultDownloadPath:Ljava/lang/String;

.field private mAuthId:Ljava/lang/String;

.field private mAuthKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDownLoadListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/upgrade/http/IDownLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

.field private mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

.field private mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

.field private mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

.field private mVersionData:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authId"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    .line 50
    iput-boolean v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDebug:Z

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 71
    new-instance v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;

    invoke-direct {v1, p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$1;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)V

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    .line 217
    iput-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    .line 219
    new-instance v1, Lcn/nubia/upgrade/http/HttpRequestManager;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/HttpRequestManager;-><init>()V

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/upgrade/util/CommonUtils;->getDefaultPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 222
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    .line 223
    .local v0, "builder":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    iput-boolean v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAllowMobileNetwork:Z

    .line 224
    const-string v1, "Upgrade"

    iput-object v1, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mAppName:Ljava/lang/String;

    .line 225
    iput-boolean v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mShowNotification:Z

    .line 226
    iput-boolean v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientDownload:Z

    .line 227
    iput-boolean v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mSlientInstall:Z

    .line 228
    const-wide/16 v2, 0x3e8

    iput-wide v2, v0, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->mNotificationUpdateOffset:J

    .line 229
    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->getConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/http/DownloadRequest;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Lcn/nubia/upgrade/model/VersionData;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/model/VersionData;)Lcn/nubia/upgrade/model/VersionData;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .param p1, "x1"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/upgrade/api/NubiaUpgradeManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authId"    # Ljava/lang/String;
    .param p2, "authKey"    # Ljava/lang/String;

    .prologue
    .line 236
    const-class v1, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-enter v1

    .line 237
    :try_start_0
    sget-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 242
    :cond_0
    sget-object v0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->sUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    monitor-exit v1

    return-object v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isUpgrading()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 587
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v2, :cond_1

    .line 594
    :cond_0
    :goto_0
    return v1

    .line 590
    :cond_1
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-virtual {v2}, Lcn/nubia/upgrade/http/DownloadRequest;->getState()Lcn/nubia/upgrade/http/DownloadRequest$State;

    move-result-object v0

    .line 591
    .local v0, "state":Lcn/nubia/upgrade/http/DownloadRequest$State;
    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/nubia/upgrade/http/DownloadRequest$State;->RUNNING:Lcn/nubia/upgrade/http/DownloadRequest$State;

    if-ne v0, v2, :cond_0

    .line 592
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downloadRequest"    # Lcn/nubia/upgrade/http/DownloadRequest;
    .param p3, "proxy"    # Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 428
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 431
    :cond_0
    :try_start_0
    const-string v11, "NubiaUpgradeManager"

    const-string v12, "Start ApkDown error Url empty"

    invoke-static {v11, v12}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    const/16 v12, 0x3eb

    invoke-virtual {v11, v12}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 433
    :catch_0
    move-exception v7

    .line 435
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 439
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 441
    :cond_2
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 444
    :cond_3
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    if-nez v11, :cond_4

    .line 445
    move-object/from16 v0, p2

    iput-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    .line 446
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadRequest:Lcn/nubia/upgrade/http/DownloadRequest;

    sget-object v12, Lcn/nubia/upgrade/http/DownloadRequest$State;->PREPARE:Lcn/nubia/upgrade/http/DownloadRequest$State;

    iput-object v12, v11, Lcn/nubia/upgrade/http/DownloadRequest;->mState:Lcn/nubia/upgrade/http/DownloadRequest$State;

    .line 450
    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 451
    .local v9, "parcelConfig":Landroid/os/Parcel;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 452
    iget-object v11, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 453
    invoke-virtual {v9}, Landroid/os/Parcel;->marshall()[B

    move-result-object v3

    .line 454
    .local v3, "byteConfig":[B
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 457
    .local v10, "parcelRequest":Landroid/os/Parcel;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Lcn/nubia/upgrade/http/DownloadRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 458
    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    .line 459
    .local v4, "byteRequest":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 461
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcn/nubia/upgrade/service/UpgradeService;

    move-object/from16 v0, p1

    invoke-direct {v6, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    .local v6, "downIntent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v11, "ConfigurationData"

    invoke-virtual {v1, v11, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 464
    const-string v11, "downloadRequest"

    invoke-virtual {v1, v11, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 466
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 467
    .local v5, "code":I
    const/16 v11, 0x12

    if-lt v5, v11, :cond_5

    .line 468
    const-string v11, "downLoadBinderProxy"

    move-object/from16 v0, p3

    invoke-virtual {v1, v11, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 496
    :goto_1
    const-string v11, "debug"

    iget-boolean v12, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDebug:Z

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 497
    const-string v11, "authid"

    iget-object v12, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v11, "authkey"

    iget-object v12, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 501
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 470
    :cond_5
    const-string v11, "NubiaUpgradeManager"

    const-string v12, "startApkDown sdk<18"

    invoke-static {v11, v12}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/4 v2, 0x0

    .line 473
    .local v2, "bundleReflect":Ljava/lang/Class;
    :try_start_1
    const-string v11, "android.os.Bundle"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 475
    const-string v11, "putIBinder"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Landroid/os/IBinder;

    aput-object v14, v12, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 477
    .local v8, "method":Ljava/lang/reflect/Method;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "downLoadBinderProxy"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p3, v11, v12

    invoke-virtual {v8, v1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 479
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v7

    .line 481
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 482
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v7

    .line 484
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 485
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v7

    .line 487
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 488
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v7

    .line 490
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 491
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v7

    .line 493
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 2
    .param p1, "downLoadListener"    # Lcn/nubia/upgrade/http/IDownLoadListener;

    .prologue
    .line 512
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    return-void
.end method

.method public debug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDebug:Z

    .line 67
    invoke-static {p1}, Lcn/nubia/upgrade/constants/HttpConstants;->debug(Z)V

    .line 68
    sput-boolean p1, Lcn/nubia/upgrade/util/Ulog;->debug:Z

    .line 69
    return-void
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "AppUpdate:version 1.3.0, versionCode 15"

    return-object v0
.end method

.method public getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/upgrade/http/IGetVersionListener;

    .prologue
    .line 261
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "getVersion() before"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "AppUpdate: Version 1.3.0, VersionCode 15"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/nubia/upgrade/util/ReportUtils;->selfReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;

    invoke-direct {v3, p0, p2, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$2;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Lcn/nubia/upgrade/http/IGetVersionListener;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    .line 305
    return-void
.end method

.method public getVersionWithServerConf(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/upgrade/http/IGetVersionListener;

    .prologue
    .line 321
    const-string v0, "NubiaUpgradeManager"

    const-string v1, "getVersion() before"

    invoke-static {v0, v1}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcn/nubia/upgrade/util/ReportUtils;->selfReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mRequestManager:Lcn/nubia/upgrade/http/HttpRequestManager;

    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthId:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mAuthKey:Ljava/lang/String;

    new-instance v4, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;

    invoke-direct {v4, p0, p1, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager$3;-><init>(Lcn/nubia/upgrade/api/NubiaUpgradeManager;Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/upgrade/http/HttpRequestManager;->getVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/upgrade/http/IGetVersionListener;Z)V

    .line 369
    return-void
.end method

.method public install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 539
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->isSlientDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 540
    iget-object p2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mVersionData:Lcn/nubia/upgrade/model/VersionData;

    .line 543
    :cond_0
    if-nez p2, :cond_1

    .line 544
    const-string v2, "NubiaUpgradeManager"

    const-string v3, "Install VersionData Null !!!"

    invoke-static {v2, v3}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_0
    return-void

    .line 547
    :cond_1
    new-instance v1, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 548
    .local v1, "downloadRequest":Lcn/nubia/upgrade/http/DownloadRequest;
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setFileSize(J)V

    .line 550
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "downloadApkPath":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 553
    :cond_2
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 556
    :cond_3
    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v2}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/upgrade/http/DownloadRequest;->setStorageLimit(J)V

    .line 563
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 565
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 570
    :goto_1
    iget-object v2, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    invoke-direct {p0, p1, v1, v2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;)V

    goto :goto_0

    .line 567
    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1
.end method

.method public isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z
    .locals 7
    .param p1, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 610
    iget-object v5, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v5}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "downloadApkPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    :cond_0
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 615
    :cond_1
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 616
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 619
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 623
    .local v1, "exist":Z
    if-eqz v1, :cond_3

    .line 624
    invoke-static {v3}, Lcn/nubia/upgrade/util/MD5Util;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, "md5File":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 626
    const/4 v1, 0x0

    .line 632
    .end local v4    # "md5File":Ljava/lang/String;
    :cond_3
    :goto_0
    return v1

    .line 628
    .restart local v4    # "md5File":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public pauseDownload()V
    .locals 3

    .prologue
    .line 578
    invoke-direct {p0}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isUpgrading()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 580
    .local v0, "pauseIntent":Landroid/content/Intent;
    const-string v1, "command_pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v1, "NubiaUpgradeManager"

    const-string v2, "Pause Action Invoked!"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 584
    .end local v0    # "pauseIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public removeDownloadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 1
    .param p1, "downLoadListener"    # Lcn/nubia/upgrade/http/IDownLoadListener;

    .prologue
    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 524
    :cond_0
    return-void
.end method

.method public setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    .line 63
    :cond_0
    return-void
.end method

.method public startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    const/4 v6, 0x1

    .line 381
    if-nez p2, :cond_0

    .line 382
    const-string v4, "NubiaUpgradeManager"

    const-string v5, "startApkDown VersionData Null !!!"

    invoke-static {v4, v5}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v1, Lcn/nubia/upgrade/http/DownloadRequest;

    invoke-direct {v1}, Lcn/nubia/upgrade/http/DownloadRequest;-><init>()V

    .line 387
    .local v1, "downloadRequest":Lcn/nubia/upgrade/http/DownloadRequest;
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setApkUrl(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setAppName(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setFileSize(J)V

    .line 390
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadPath()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "downloadApkPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    :cond_1
    iget-object v0, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->defaultDownloadPath:Ljava/lang/String;

    .line 394
    :cond_2
    invoke-virtual {v1, v0}, Lcn/nubia/upgrade/http/DownloadRequest;->setDownLoadPath(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setDstVersion(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setFromVersion(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumNew(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setCheckSumPatch(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 401
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    .line 405
    :goto_1
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mUpdateConfiguration:Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    invoke-virtual {v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;->getDownloadStorageLimit()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/nubia/upgrade/http/DownloadRequest;->setStorageLimit(J)V

    .line 408
    invoke-virtual {p0, p2}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->isApkExist(Lcn/nubia/upgrade/model/VersionData;)Z

    move-result v3

    .line 409
    .local v3, "isApkFileExist":Z
    if-eqz v3, :cond_5

    .line 411
    :try_start_0
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcn/nubia/upgrade/http/DownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;->onDownloadComplete(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 413
    :catch_0
    move-exception v2

    .line 415
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 403
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "isApkFileExist":Z
    :cond_4
    invoke-virtual {v1, v6}, Lcn/nubia/upgrade/http/DownloadRequest;->setIsPatch(Z)V

    goto :goto_1

    .line 419
    .restart local v3    # "isApkFileExist":Z
    :cond_5
    iget-object v4, p0, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->mDownloadProxy:Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;

    invoke-direct {p0, p1, v1, v4}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/http/DownloadRequest;Lcn/nubia/upgrade/service/DownloadBinderProxy$Stub;)V

    goto/16 :goto_0
.end method

.method protected startForceUpgrade(Landroid/content/Context;Lcn/nubia/upgrade/http/IDownLoadListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "downLoadListener"    # Lcn/nubia/upgrade/http/IDownLoadListener;

    .prologue
    .line 253
    return-void
.end method
